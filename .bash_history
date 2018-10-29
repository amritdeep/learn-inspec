inspec help
inspec detect
cd /root/
ll
ls
ls -la
tree auditd/
cat auditd/controls/example.rb 
inspec exec /root/auditd/
inspec exec auditd -t ssh://root:password@target
inspec exec auditd -t ssh://root:password@target --reporter=json | jq .
inspec check auditd
inspec archive auditd/
ls | grep auditd
inspec exec auditd-0.1.0.tar.gz -t ssh://root:password@target
inspec exec https://github.com/learn-chef/auditd/releases/download/v0.1.0/auditd-0.1.0.tar.gz -t ssh://root:password@target
inspec supemarket profiles
inspec supermarket profiles
inspec supermarket info dev-sec/linux-baseline
inspec supermarket exec dev-sec/linux-baseline -t ssh://root:password@target
inspec exec http://github.com/dev-sec/linux-baseline -t ssh://root:password@target | grep -A 7 package-08
inspec exec http://github.com/dev-sec/linux-baseline -t ssh://root:password@target --controls pakcage-08
exit
curl target
cd /root/
ll
pwd
inspec init profile my_nginx
ll
dir
tree my_nginx/
cd my_nginx/
tree
cat inspec.yml 
cat README.md 
cat controls/example.rb 
inspec shell
inspec shell
inspec shell -t ssh://root:password@target
ll
tree
cat controls/example.rb 
vi controls/example.rb 
cat controls/example.rb 
pwd
inspec -t ssh://root:password@target
inspec exec -t ssh://root:password@target
inspec exec /root/my_nginx/  -t ssh://root:password@target
vi controls/example.rb 
inspec /root/my_nginx/ -t ssh://root:password@target
inspec exec /root/my_nginx/ -t ssh://root:password@target
vi controls/example.rb 
inspec exec -t ssh://root:password@target
inspec exec /root/my_nginx/  -t ssh://root:password@target
cat controls/example.rb 
ls /etc/nginx/nginx.conf
inspec shell ssh://root:password@target
inspec shell -t ssh://root:password@target
vi controls/example.rb 
inspec exec /root/my_nginx/ -t ssh://root:password@target
pwd
mkdir -p /root/my_nginx/files
tree 
vi files/params.yml
cat controls/example.rb 
ll
ls
tree
vi controls/nginx_example.rb
cat controls/nginx_example.rb
inspec exec /root/my_nginx/controls/nginx_example.rb -t ssh://root:password@target
vi controls/nginx_example.rb
inspec exec /root/my_nginx/controls/nginx_example.rb -t ssh://root:password@target
vi controls/nginx_example.rb
inspec exec /root/my_nginx/controls/nginx_example.rb -t ssh://root:password@target
tree 
inspec exec /root/my_nginx/ -t ssh://root:password@target
vi controls/nginx_example.rb
cat files/params.yml 
vi controls/nginx_example.rb
inspec exec /root/my_nginx/ -t ssh://root:password@target
vi controls/nginx_example.rb
inspec exec /root/my_nginx/ -t ssh://root:password@target
vi controls/nginx_example.rb
inspec exec /root/my_nginx/ -t ssh://root:password@target
vi files/params.yml 
inspec exec /root/my_nginx/ -t ssh://root:password@target
inspec supermarket exec dev-sec/nginx-baseline -t ssh://root:password@target
inspec supermarket exec dev-sec/nginx-baseline -t ssh://root:password@target
gst
cd
exit
