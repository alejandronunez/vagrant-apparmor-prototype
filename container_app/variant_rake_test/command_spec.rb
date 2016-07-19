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

    system("rm -rf --no-preserve-root /vagrant")

    out_file = File.new('/vagrant/spec/files/temp/new_file_from_spec.txt', "w")

  end
end