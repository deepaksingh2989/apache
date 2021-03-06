package	'httpd'	do
 action :install
end

file '/var/www/html/index.html' do
 content "<h1>Hello, world!</h1>
<h2>ipaddress: #{node['ipaddress']}</h2>
<h2>hostname: #{node['hostname']}</h2>
<h2>cloud: #{node['cloud_v2']['provider']}</h2>
"
end

service 'httpd'	do
 action	[ :enable, :start]
end
