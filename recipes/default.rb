#
# Cookbook Name:: hostfile
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
hosts = search(:node, "*:*")
template "/etc/hosts" do
source "hosts.erb"
owner "root"
group "root"
mode 0644
variables(
    :hosts => hosts,
    :hostname => node[:hostname],
    :fqdn => node[:fqdn]
)
end
