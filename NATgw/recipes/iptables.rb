#
# Cookbook Name:: internetGW
# Recipe:: iptables
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

execute 'iptables set' do
  command 'iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE'
end

execute 'iptables save' do
  command 'iptables -t nat -S'
end
