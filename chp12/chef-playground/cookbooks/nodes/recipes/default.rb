#
# Cookbook Name:: nodes
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

#Print every node name matching the search pattern
search("node", "*:*").each do |matching_nodes|
  log matching_nodes.to_s
end
