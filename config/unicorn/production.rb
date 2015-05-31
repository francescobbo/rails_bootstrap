root = "/var/www/my_app_name/current"

pid            "#{root}/tmp/pids/unicorn.pid"
stderr_path    "#{root}/log/unicorn_error.log"
stdout_path    "#{root}/log/unicorn.log"

worker_processes 3
working_directory root
timeout 15
preload_app true

listen "#{root}/tmp/sockets/unicorn.sock", :backlog => 1024

# Backup listen for debugging
# listen "127.0.0.1:8080", :tcp_nopush => true

before_fork do |server, worker|
  # the following is highly recomended for Rails + "preload_app true"
  # as there's no need for the master process to hold a connection
  defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end

before_exec do |_|
  ENV["BUNDLE_GEMFILE"] = File.join(root, 'Gemfile')
end

