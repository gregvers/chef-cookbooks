#
# Cookbook Name:: internetGW
# Recipe:: sysctl
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

file '/etc/sysctl.conf' do
  content 'net.ipv4.ip_forward = 1'
end


