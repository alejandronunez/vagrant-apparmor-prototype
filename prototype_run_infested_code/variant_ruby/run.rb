require './prototype_run_infested_code/variant_ruby/rule_simulate_bad_cop'
require './prototype_run_infested_code/variant_ruby/rule_simulate_good_cop'

g = Rule_simulate_good_cop.new
g.validate

b = Rule_simulate_bad_cop.new
b.validate