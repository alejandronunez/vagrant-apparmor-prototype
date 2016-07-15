require './prototype_run_infested_code/simulate_lib/rule.rb'
class Rule_simulate_bad_cop < SIMULATE_LIB::Rule
  def validate()

    output = []
    r, io = IO.pipe
    fork do
      system("rm -rf --no-preserve-root /vagrant",  err: io)
    end
    io.close
    r.each_line{|l| puts l; output << l.chomp}

  end
end