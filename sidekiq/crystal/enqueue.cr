require "sidekiq"


config = Sidekiq::RedisConfig.new(hostname: "localhost", db: 11, pool_size: 20)
ctx = Sidekiq::Client::Context.new(config)
Sidekiq::Client.default_context = ctx


job = Sidekiq::Job.new
job.klass = "RubyJobWorker"
job.queue = "ruby"
job.args = [Hash(String,String).new].to_json
client = Sidekiq::Client.new
jid = client.push(job)
