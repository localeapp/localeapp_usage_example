workers Integer(ENV.fetch('PUMA_WORKERS', 3))
threads Integer(ENV.fetch('MIN_THREADS', 1)), Integer(ENV.fetch('MAX_THREADS', 16))

preload_app!

rackup      DefaultRackup
port        ENV.fetch('PORT', 5000)
environment ENV.fetch('RACK_ENV', 'development')

on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end
