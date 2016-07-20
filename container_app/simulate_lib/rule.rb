require 'json'

module SIMULATE_LIB
  class Rule
    def trigger_violation(msg)
      puts ({run_id:RUN_ID,msg:msg}.to_json)
    end
  end
end