#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

cookbook_file "/etc/motd" do
  source 'motd'
  mode '0644'
end