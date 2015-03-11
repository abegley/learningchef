#
# Cookbook Name:: enterprise-chef
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe "enterprise-chef::chef-server"
include_recipe "enterprise-chef::opscode-manage"

