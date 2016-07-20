require './simulate_lib/rule.rb'

# eval('puts "sirvio"');

RUN_ID = ARGV[0]
USER_RULE = ARGV[1]
COD = ARGV[2]
puts "#### Begin: rule #{RUN_ID} ####"
rule = SIMULATE_LIB::Rule.new

eval(USER_RULE)

puts "#### end: rule #{RUN_ID} ####"

# docker run cod_runner ruby /usr/app/run.rb "rule.trigger_violation(COD)" "sirvio"
