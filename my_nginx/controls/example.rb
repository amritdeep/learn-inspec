# encoding: utf-8
# copyright: 2018, The Authors

title 'sample section'

# you can also use plain tests
describe file('/tmp') do
  it { should be_directory }
end

# you add controls here
control 'tmp-1.0' do                        # A unique ID for this control
  impact 0.7                                # The criticality, if this control fails.
  title 'Create /tmp directory'             # A human-readable title
  desc 'An optional description...'
  describe file('/tmp') do                  # The actual test
    it { should be_directory }
  end
end

# nginx version
control 'nginx-version' do
 impact 1.0
 title 'NGINX version'
 desc 'The required version of NGINX should be installed.'
 describe nginx do
  its('version') { should cmp >= '1.10.3' }
 end
end

# nginx module
control 'nginx-module' do
 impact 1.0
 title 'Nginx Module'
 desc 'The required module should be installed.'
 describe nginx do
  its('modules') { should include 'http_ssl' }
  its('modules') { should include 'stream_ssl' }
  its('modules') { should include 'mail_ssl' }
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
