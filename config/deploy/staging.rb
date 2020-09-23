# set :branch, 'master'
# set :resque_rails_env, 'staging'
# set :server_ip, '157.175.94.168'

# # Configuration for server (ssh details)
# server fetch(:server_ip),
#   user: 'ubuntu',
#   roles: %w{web app db},
#   ssh_options: {
#     user: 'ubuntu', # overrides user setting above
#     keys: %w(~/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey)
#     # password: 'please use keys'
#   }

# frozen_string_literal: true
# server-based syntax
# ======================
set :branch, 'master'
set :server_ip, '157.175.94.168'
set :nginx_server_name, "#{fetch(:server_ip)} #{fetch(:application)}.local"

server fetch(:server_ip), user: 'ubuntu', roles: %w[web app db]