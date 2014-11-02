cookbook_path    ["cookbooks", "site-cookbooks"]
node_path        "nodes"
role_path        "roles"
environment_path "environments"
data_bag_path    "data_bags"

validation_key '/dev/null'
#encrypted_data_bag_secret "data_bag_key"
knife[:node_name] = "CongDang"
knife[:chef_mode] = "solo"

encrypted_data_bag_secret "data_bags/encrypted_data_bag_secret"
knife[:secret_file] = ".chef/encrypted_data_bag_secret"
