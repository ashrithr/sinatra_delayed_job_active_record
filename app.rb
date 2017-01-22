require 'sinatra/base'
require 'delayed_job'
require 'delayed_job_active_record'
require 'sinatra/activerecord'

Dir['lib/*.rb'].sort.each { |file| require_relative file }

# Configure DelayedJob
Delayed::Worker.backend = :active_record
Delayed::Worker.destroy_failed_jobs = true
Delayed::Worker.sleep_delay = 5
Delayed::Worker.max_attempts = 5
Delayed::Worker.max_run_time = 5.minutes

module Dj
  class App < Sinatra::Base
    get '/' do
      "It's working"
    end

    get '/dj' do
      Delayed::Job.enqueue(
        CustomTask.new(
          "hello"
        )
      )
    end
  end
end
