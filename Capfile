require "capistrano/setup"
require "capistrano/deploy"

require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

require "capistrano/rbenv"
set :rbenv_type, :user
set :rbenv_ruby, '2.4.1'

require 'capistrano/rails'
require "capistrano/passenger"

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
