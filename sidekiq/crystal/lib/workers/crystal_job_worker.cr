class CrystalJobWorker
  include Sidekiq::Worker
  sidekiq_options do |job|
    job.queue = "default"
    job.retry = true
  end

  def perform(options : Hash(String, String))
    logger.info "hello from crystal!"
  end
end
