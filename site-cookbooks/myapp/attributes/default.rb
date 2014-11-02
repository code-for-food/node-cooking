secrets = Chef::EncryptedDataBagItem.load("secrets", "myapp")

default['mysql']['server_root_password']   = secrets["db_config"][node.chef_environment][0]["mysql_root_password"]
default['mysql']['server_debian_password'] = secrets["db_config"][node.chef_environment][0]["mysql_root_password"]
default['mysql']['server_repl_password']   = secrets["db_config"][node.chef_environment][0]["mysql_root_password"]