#
# Cookbook Name:: myapp
# Recipe:: default
#
# Copyright 2014, CongDang
# Email: congdang@asnet.com.vn
#
# All rights reserved - Do Not Redistribute
#

# install nvm
include_recipe "mysql::client"
include_recipe "mysql::server"
include_recipe 'nvm'

# install node.js v0.10.5
nvm_install 'v0.10.33'  do
    from_source true
    alias_as_default true
    action :create
end