set :branch, 'staging'
set :server_ip, '157.175.94.168'
set :nginx_server_name, "#{fetch(:server_ip)} #{fetch(:application)}.local"

server fetch(:server_ip), user: 'ubuntu', roles: %w[web app db]
