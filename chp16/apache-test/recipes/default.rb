#
# Cookbook Name:: apache-test
# Recipe:: default
#
# Copyright (c) 2015

package "httpd"

service "httpd" do
  action [ :enable, :start ]
end

template "/var/www/html/index.html" do
  source 'index.html.erb'
  mode '0644'
end