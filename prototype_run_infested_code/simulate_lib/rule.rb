module SIMULATE_LIB
  class Rule
    def trigger_violation(msg)
      puts 'LIB:RULE:'+msg
    end

    def validate

    end
  end
end