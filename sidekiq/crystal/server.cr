require "sidekiq/cli"
require "./lib/workers/crystal_job_worker"

cli = Sidekiq::CLI.new
server = cli.configure do |config|
  config.redis = Sidekiq::RedisConfig.new(hostname: "localhost", db: 11, pool_size: 20)
end

cli.run(server)
