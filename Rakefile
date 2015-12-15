require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)


desc 'test using minittest via test/suite.rb'
task :test do
  $LOAD_PATH << File.dirname(__FILE__)
  require 'test/suite'
end
task :default => :test
