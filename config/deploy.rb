# config valid only for current version of Capistrano
lock '3.14.1'

set :application, 'demo_deployment'

set :repo_url, 'git@github.com:omer-algreeb/demo_deployment.git'

set :rails_env, fetch(:stage)

set :deploy_to, "/var/www/html/#{fetch(:application)}_#{fetch(:stage)}"

set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/master.key')

set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

set :rvm_type, :user

set :rvm_ruby_version, '2.7.0@demo_deployment'

# Puma configs
# set :puma_threads, [4, 16]
# set :puma_workers, 1

# Nginx configs
# set :nginx_server_name, "api.#{fetch(:stage)}.jisr.net"
# set :nginx_config_name, fetch(:nginx_server_name)

#
# set :resque_log_file, "log/resque.log"

# Restart Resque worker after deploy is successful
# after "deploy:finished", "resque:restart"

# # Restart Resque scheduler after deploy is successful
# after "deploy:finished", "resque:scheduler:restart"

# namespace :rails do
#   desc "Remote console"
#   task :console do
#     on roles(:app) do |h|
#       run_interactively "bundle exec rails console #{fetch(:rails_env)}", h.user
#     end
#   end

#   desc "Remote dbconsole"
#   task :dbconsole do
#     on roles(:app) do |h|
#       run_interactively "bundle exec rails dbconsole #{fetch(:rails_env)}", h.user
#     end
#   end

#   desc "Remote dbconsole"
#   task :logs do
#     on roles(:app) do |h|
#       run_interactively "tail -f -n 100 log/#{fetch(:rails_env)}.log", h.user
#     end
#   end

#   def run_interactively(command, user)
#     info "Running `#{command}` as #{user}@#{host}"
#     exec %Q(ssh #{user}@#{host} -t "bash --login -c 'cd #{fetch(:deploy_to)}/current && #{command}'")
#   end
# end
