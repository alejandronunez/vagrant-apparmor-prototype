require 'spec_helper'

describe 'File' do
  it 'Permission denied to creating file' do
    msg_error = ''
    begin
      out_file = File.new('/vagrant/spec/files/temp/new_file.txt', "w")
      out_file.puts('algo')
      out_file.close()
    rescue Errno::EACCES => msg
      msg_error = msg.to_s;
    rescue Exception => msg
      msg_error = msg.to_s;
    end
    expect(msg_error).to include('Permission denied')
  end

  it 'Permission denied to editing file' do
    msg_error = ''
    begin
      out_file = File.open('/vagrant/spec/files/temp/new_file.txt', "w")
      out_file.puts('hei!! modified')
      out_file.close()
    rescue Errno::EACCES => msg
      msg_error = msg.to_s;
    rescue Exception => msg
      msg_error = msg.to_s;
    end
    expect(msg_error).to include('Permission denied')

    msg_error = ''
    begin
      out_file = File.open('/vagrant/spec/files/temp/to_modify_file.txt', "w")
      out_file.puts('hei!! modified')
      out_file.close()
    rescue Errno::EACCES => msg
      msg_error = msg.to_s;
    rescue Exception => msg
      msg_error = msg.to_s;
    end
    expect(msg_error).to include('Permission denied')

  end
  #
  it 'Permission denied to deleting file' do

    msg_error = ''
    begin
      File.delete('/vagrant/spec/files/temp/EMPTY')
    rescue Errno::EACCES => msg
      msg_error = msg.to_s;
    rescue Exception => msg
      msg_error = msg.to_s;
    end
    expect(msg_error).to include('Permission denied')

  end

end