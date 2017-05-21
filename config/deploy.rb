# config valid only for current version of Capistrano
lock '3.8.1'

set :application, 'jointhub'
set :repo_url, 'git@github.com:tsukalab/jointhub.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/deploy/jointhub'


set :nodebrew_type, :user # or :system, depends on your nodebrew setup
set :nodebrew_node, 'v7.10.0'

set :nodebrew_map_bins, %w[npm node] # default values
set :nodebrew_roles, :all # default value

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
