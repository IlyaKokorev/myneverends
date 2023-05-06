lock "~> 3.17.2"

set :application, "neverends"
set :repo_url, "git@github.com:IlyaKokorev/myneverends.git"
set :deploy_to, '/home/deploy/www'

append :linked_files, 'config/database.yml', 'config/secrets.yml'
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads'
