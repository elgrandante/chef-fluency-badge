#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#Install apache package
if node[ 'platform_family'] == rhel
	package = "httpd"
elsif node [ 'platform_family']  == "debian"
	pacakge = "apache2"
end

package 'apache2' do
	package_name 'httpd'
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:start, :enable] 
end

