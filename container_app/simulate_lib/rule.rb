require 'rainbow/ext/string'

module SIMULATE_LIB
  class Rule
    def trigger_violation(msg)
      puts ('LIB:RULE:'+msg.to_s).background(:yellow).foreground(:aliceblue)
    end

    def validate

    end
  end
end