require 'spec_helper'

describe 'Command' do

  it 'Permission denied to System command' do
    output = []
    r, io = IO.pipe
    fork do
      system("rm -rf --no-preserve-root /vagrant",  err: io)
    end
    io.close
    r.each_line{|l| puts l; output << l.chomp}

    expect(output[0]).to include('Permission denied')
  end
end