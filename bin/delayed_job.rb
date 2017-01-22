#!/usr/bin/env ruby

# RAILS_ENV=development bin/delayed_job.rb run

require File.expand_path(File.join(File.dirname(__FILE__), '..', 'app'))
require 'delayed/command'

Delayed::Command.new(ARGV).daemonize
