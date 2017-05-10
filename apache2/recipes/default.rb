#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright (c) 2017 Andrei Caprar.

apt_update 'daily' do
  frequency 86_400
  action :periodic
end

include_recipe 'apache2::web'
