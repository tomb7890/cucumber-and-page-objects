require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
  task :default => :firefox
end

Cucumber::Rake::Task.new(:firefox) do |t|
  t.profile = 'firefox'
end

Cucumber::Rake::Task.new(:chrome) do |t|
  t.profile = 'chrome'
end

Cucumber::Rake::Task.new(:safari) do |t|
  t.profile = 'safari'
end
