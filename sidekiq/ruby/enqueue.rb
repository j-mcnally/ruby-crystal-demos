($LOAD_PATH << '.' << 'lib' << 'lib/workers').uniq!

require 'sidekiq'
require 'ruby_job_worker'

Sidekiq.configure_client do |config|
  config.redis = { url: "redis://localhost/11/sidekiq_demo" }
end

Sidekiq::Client.push('queue' => "crystal", 'class' => "CrystalJobWorker", 'args' => [{}])
