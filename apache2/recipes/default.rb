#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright (c) 2017 Andrei Caprar.

apt_update 'daily' do
  frequency 86_400
  action :periodic
end

package 'apache2'

service 'apache2' do
  supports :status => true
  action [:enable, :start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end

include_recipe 'apache2::web'
