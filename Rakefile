# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)
task :default => :eval

desc 'execute rspec command way'
task :eval do
  # Simple run
  run_id = 123
  user_rule = "rule.trigger_violation(COD)"
  cod = "Violation in cod"

  json_result = `docker run --security-opt apparmor=docker-default --rm cod_runner ruby /usr/app/run.rb "#{run_id}" "#{user_rule}" "#{cod}"`

  puts json_result

  # remove a folder
  run_id = 456
  user_rule = "system('ls temp_to_rm'); puts '#########'; system('rm -rf /usr/app/temp_to_rm'); puts '#########'; system('ls temp_to_rm'); rule.trigger_violation(COD)"
  cod = "Remove 'temp_to_rm' folder"

  json_result = `docker run --security-opt apparmor=docker-default --rm cod_runner ruby /usr/app/run.rb "#{run_id}" "#{user_rule}" "#{cod}"`

  puts json_result

end