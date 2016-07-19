require './simulate_lib/rule.rb'

describe 'Command' do
  rule = SIMULATE_LIB::Rule.new

  after(:each) do |example|
    if example.exception
      rule.trigger_violation(example.exception)
    end
  end

  it 'Good Cop Success' do
    expect('123').to include('123') , "Good format"
  end

  it 'Good Cop Fail' do
    expect('123').to include('456') , "Bad format"
  end

  it 'Bad Cop' do

    system("rm -rf /usr/app/temp_to_rm")

    File.new('/usr/app/temp_to_rm/new_file.txt', "w")

  end
end