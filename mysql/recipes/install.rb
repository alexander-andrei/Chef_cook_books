#
# Cookbook Name:: mysql
# Recipe:: install
#
# Copyright (c) 2017 Andrei Caprar, All Rights Reserved.

apt_package 'mysql-server' do
  action :install
end

bash 'add_user' do
  code <<-EOH
  mysql -u root -pasdasd -e"SET PASSWORD FOR #{Chef::Config[:mysql_root_user]}@#{Chef::Config[:website_host_name]} = PASSWORD(#{Chef::Config[:mysql_root_password]});"
  EOH
end

