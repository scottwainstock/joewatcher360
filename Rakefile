require 'rake'
require 'rspec/core/rake_task'

desc 'Run all specs'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w[--color]
end
task :default => :spec
