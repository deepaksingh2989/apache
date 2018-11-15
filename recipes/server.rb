package	'httpd'	do
 action :install
end

file '/var/www/html/index.html' do
 content "This is my first webpage"
end

service 'httpd'	do
 action	[ :enable, :start]
end
