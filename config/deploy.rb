# config valid only for current version of Capistrano
lock '3.8.1'

set :application, 'jointhub'
set :repo_url, 'git@github.com:tsukalab/jointhub.git'

# set :default_env, {
#   path: "/home/deploy/.nodenv/shims/node:$PATH"
# }

set :rbenv_type, :user
set :rbenv_ruby, '2.4.1'
set :nodenv_type, :user # or :system, depends on your nodenv setup
# set :nodenv_node, '7.10.0'
# set :nodenv_prefix, "NODENV_ROOT=#{fetch(:nodenv_path)} NODENV_VERSION=#{fetch(:nodenv_node)} #{fetch(:nodenv_path)}/bin/nodenv exec"
# set :nodenv_map_bins, %w[node npm]
# set :nodenv_roles, :all # default value
# append :nodenv_map_bins, 'bin/yarn'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/deploy/jointhub'

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log',
# color: :auto, truncate: :auto

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
# append :linked_files, 'config/database.yml', 'config/secrets.yml', 'config/initializers/devise.rb'
append :linked_files, 'config/secrets.yml.key'

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system', 'node_modules'

# Default value for default_env is {}
# set :default_env, { path: '/opt/ruby/bin:$PATH' }

# Default value for keep_releases is 5
set :keep_releases, 1

after 'deploy:publishing', 'deploy:restart'
