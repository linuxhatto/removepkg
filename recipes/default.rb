#
# Cookbook Name:: hostfile
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
rpm_package 'postfix' do
  action :remove
end
