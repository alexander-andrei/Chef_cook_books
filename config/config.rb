current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "acaprar"
client_key               "#{current_dir}/t_o_ac-validator.pem"
chef_server_url          "https://api.chef.io/organizations/t_o_ac"
cookbook_path            ["#{current_dir}/../cookbooks"]


website_file_path	'/var/www/mywebsite.com'
mysql_root_user		'root'
mysql_root_password	'asdasd'
website_hostname	'localhost'
