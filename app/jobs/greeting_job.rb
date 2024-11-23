class GreetingJob < ApplicationJob
  queue_as :default

  def perform(message: "hello")
    puts "Queue Adapter: #{ActiveJob::Base .queue_adapter}"
    puts "message: " + message
  end
end
