#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright (c) 2017 Andrei Caprar, All Rights Reserved.

apt_update 'daily' do
  frequency 86_400
  action :periodic
end

include_recipe 'mysql::install'

