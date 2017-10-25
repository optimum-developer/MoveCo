set :stage, :staging
set :branch, :staging

server '139.59.88.132',
  roles: %w{app web db},
  ssh_options: {
      user: 'deploy',
      auth_methods: %w(password),
      password: 'TTT@123'
  }

set :deploy_to,       "/home/#{fetch(:user)}/staging/#{fetch(:application)}"
set :puma_bind,       "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}_staging-puma.sock"
set :puma_state,      "#{shared_path}/tmp/pids/puma.state"
set :puma_pid,        "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{release_path}/log/puma.error.log"
set :puma_error_log,  "#{release_path}/log/puma.access.log"

config.assets.digest = true