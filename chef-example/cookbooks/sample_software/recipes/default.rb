#
# Cookbook:: sample_software
# Recipe:: default
#
# Copyright:: 2024, The Authors, All Rights Reserved.

# Install Git
package 'git' do
  action :install
end

# Create a configuration file
file '/tmp/chef_managed_config.conf' do
  content 'This file is managed by Chef'
  mode '0644'
  owner 'root'
  group 'root'
  action :create
end

# Log a message
log 'message' do
  message 'Chef has successfully configured this node.'
  level :info
end
