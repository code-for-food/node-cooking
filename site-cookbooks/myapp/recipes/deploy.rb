#
# Cookbook Name:: myapp
# Recipe:: default
#
# Copyright 2014, CongDang
# Email: congdang@asnet.com.vn
#
# All rights reserved - Do Not Redistribute
#

# grant permission for webroot
directory node["myapp"]["root_path"] do
  owner "root"
  group "root"
  mode "0755"
  action :create
  recursive true
end

bash "Restart Node server" do
	user "root"
	code <<-EOH
	cd #{node["myapp"]["root_path"]}
	sudo npm install
	sudo forever stopall
	sudo forever start -a -c coffee server.coffee
	EOH
end