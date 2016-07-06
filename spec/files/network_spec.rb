require 'spec_helper'
require 'net/http'


describe 'Network' do

  it 'Permission denied to a http request' do
    msg_error = ''
    begin
      uri = URI.parse("http://172.0.0.1")
      http = Net::HTTP.new(uri.host, uri.port)
      request = Net::HTTP::Get.new(uri.request_uri)
      response = http.request(request)

    rescue Errno::EACCES => msg
      msg_error = msg.to_s;

    rescue Exception => msg
      msg_error = msg.to_s;

    end

    expect(msg_error).to include('Permission denied')
  end
end