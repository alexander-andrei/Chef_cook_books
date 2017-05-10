#
# Cookbook Name:: apache2
# Recipe:: web
#
# Copyright (c) 2017 Andrei Caprar.

#Create root dir.
directory node['apache2']['web']['website_root'] do
  recursive true
end

# Install Apache2
package ['apache2'] do
  action :install
end

# Add the configuration
template '/etc/apache2/sites-enabled/000-default.conf' do
  source 'default.conf.erb'
end

# Restart the server
service 'apache2' do
  action :restart
end
