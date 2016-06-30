context 'Create File' do
  specify 'Creating file' do
    out_file = File.new('/vagrant/security_example/temp/new_file.txt', "w")
    out_file.puts('')
    out_file.close
  end
  specify 'Editing file' do
    out_file = File.open('/vagrant/security_example/temp/new_file.txt', "w")
    out_file.puts('hei!! modified')
    out_file.close

    out_file = File.open('/vagrant/security_example/temp/to_modify_file.txt', "w")
    out_file.puts('hei!! modified')
    out_file.close
  end
  specify 'Deleting file' do
    File.delete('/vagrant/security_example/temp/to_modify_file.txt')
  end
end