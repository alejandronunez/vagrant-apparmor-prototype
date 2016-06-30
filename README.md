##Readme
In this prototype allow rspec execute but not allow that it files be modified.
The apparmor_profiles folder have a profile for rspec. To controller other process you would create new profile.

#Execute test.
Deny that files be modified
```
rspec /vagrant/security_example/create_file_spec.rb
```
Allow all test
```
sudo aa-complain home.vagrant..rbenv.shims.rspec
rspec /vagrant/security_example/create_file_spec.rb
```

#Create a new profile:
1. Generate Profile
```
sudo aa-genprof /home/vagrant/.rbenv/shims/rspec
```
2. Set apparmor enforce mode
```
sudo aa-enforce /home/vagrant/.rbenv/shims/rspec
```
3. Reload profiles
```
sudo /etc/init.d/apparmor reload
```
4. Execute target process
```
rspec /vagrant/security_example/create_file_spec.rb
```
5. Scan log and modify profile with
```
sudo aa-logprof
```
6. Copy the profile file from apparmor.d to apparmor_profiles
```
sudo cp /etc/apparmor.d/home.vagrant..rbenv.shims.rspec /vagrant/apparmor_profiles/
```
7. Update setup/bootstrap.sh file to new profile.

#Links useful:
http://wiki.apparmor.net/index.php/QuickProfileLanguage
https://help.ubuntu.com/14.04/serverguide/apparmor.html
https://www.suse.com/documentation/sled11/singlehtml/apparmor_quickstart/apparmor_quickstart.html