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

bash "installing the NVM" do
	user "root"
	code <<-EOH
	cd ~/
	curl https://raw.githubusercontent.com/creationix/nvm/v0.11.1/install.sh | bash
	source ~/.profile
	nvm install 0.10.33
	n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local
	sudo -s
	sudo npm install -g coffee-script
	sudo npm install -g forever
	EOH
end