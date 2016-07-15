require './prototype_run_infested_code/simulate_lib/rule.rb'
class Rule_simulate_good_cop < SIMULATE_LIB::Rule
  def validate()
    trigger_violation('Bad format')
  end
end