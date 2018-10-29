# encoding: utf-8
# copyright: 2018, The Authors

title 'Nginx Test section'

nginx_params = yaml(content: inspec.profile.file('params.yml')).params

required_version = nginx_params['version']
required_modules = nginx_params['modules']
  
# nginx version
control 'nginx-version' do
 impact 1.0
 title 'NGINX version'
 desc 'The required version of NGINX should be installed.'
 describe nginx do
  its('version') { should cmp >= required_version }
 end
end

# nginx module
control 'nginx-module' do
 impact 1.0
 title 'Nginx Module'
 desc 'The required module should be installed.'
 describe nginx do
  required_modules.each do |mod|
   its('modules') { should include mod }
  end
 end
end

# ngix configuration
control 'nginx-conf' do
 impact 1.0
 title 'Nginx Configuration'
 desc 'The NGINX config file should owned by root, be writable only by owner, and not writeable or and readabel by others.'
 describe file('/etc/nginx/nginx.conf') do
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should_not be_readable.by('others') }
  it { should_not be_writeable.by('others') }
  it { should_not be_exectuable.by('others') }
 end
end

