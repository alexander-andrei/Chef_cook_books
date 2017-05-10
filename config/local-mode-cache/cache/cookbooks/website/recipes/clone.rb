#
# Cookbook Name:: website
# Recipe:: clone
#
# Copyright (c) 2017 Andrei Caprar, All Rights Reserved.

git "#{Chef::Config[:website_file_path]}" do
  repository node[:website][:git_repository]
  action :sync
end
