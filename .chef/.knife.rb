require 'chef/mixin/command'

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                '$username'
client_key               '/home/$username/.chef/$username.pem'
validation_client_name   'validator'
validation_key           '/home/$usrname/.chef/validator.pem'
chef_server_url          'https://chef_server'
syntax_check_cache_path  '/home/$username/.chef/syntax_check_cache'
cache_tye                'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            [
"#{current_dir}/../vendored_cookbooks",
"#{current_dir}/../cookbooks"
]
chef_repo_path `pwd`.chomp

## access keys
knife[:aws_access_key_id]     = 'access_key_here'
knife[:aws_secret_access_key] = 'secret_access_key_here'
knife[:editor]="vim"

