#
# Cookbook Name:: raspberry
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#
log "Set-up Raspberry-Pi"

package "mediatomb" do
    action :install
end

template "/etc/mediatomb/config.xml" do
    source "mediatomb/config.xml.erb"
    owner "root"
    group "root"
    mode  0644
end

