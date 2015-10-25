# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'ideapool'
set :repo_url, 'git@github.com:tka/ideapool.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/ideapool'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml', 'config/application.yml')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'public/uploads', 'node_modules')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

# unicorn
set :unicorn_pid, '/home/ideapool/shared/unicorn.pid'
set :unicorn_config_path, '/home/ideapool/shared/config/unicorn.rb'

namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end

  task :webpack_assets do
    on release_roles(:app) do
      within release_path do
        execute :webpack
      end
    end
  end
end

after 'deploy:updated', 'deploy:webpack_assets'
after 'deploy:publishing', 'deploy:restart'
