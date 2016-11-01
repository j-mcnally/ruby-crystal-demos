class RubyJobWorker
  include Sidekiq::Worker

  sidekiq_options queue: :ruby, retry: false

  def perform(options)
    puts "HELLO FROM RUBY!!!!"
  end
end
