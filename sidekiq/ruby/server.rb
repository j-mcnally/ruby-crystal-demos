($LOAD_PATH << '.' << 'lib' << 'lib/workers').uniq!
require 'sidekiq'
require 'ruby_job_worker'

Sidekiq.configure_server do |config|
  config.redis = { url: "redis://localhost/11/sidekiq_demo" }
end
