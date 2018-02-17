#
# Cookbook Name:: internetGW
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

execute 'sysctl' do
  command 'sysctl -w net.ipv4.ip_forward=1'
end

execute 'iptables set' do
  command 'iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE'
end

execute 'iptables save' do
  command 'iptables -t nat -S'
end
