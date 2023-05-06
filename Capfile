require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/scm/git"
require 'capistrano/bundler'
require 'capistrano/rbenv'
require 'capistrano/rails'
require 'capistrano/passenger'

install_plugin Capistrano::SCM::Git

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }

set :rbenv_type, :user
set :rbenv_ruby, '2.7.8'
