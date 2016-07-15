# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)
task :default => :spec

desc 'execute ruby command way'
task :ruby do
  system("ruby /vagrant/prototype_run_infested_code/variant_ruby/run.rb")
end

desc 'execute rspec command way'
task :rspec do
  system("rspec /vagrant/prototype_run_infested_code/variant_rake_test/command_spec.rb")
end