# Last Modified: Mon Jul  4 16:35:48 2016
#include <tunables/global>

/home/vagrant/.rbenv/shims/rake {
  #include <abstractions/base>

  /bin/** rix,
  /dev/pts/0 rw,
  /dev/tty rw,
  /home/*/.rbenv/libexec/** rix,
  /home/*/.rbenv/plugins/ r,
  /home/*/.rbenv/plugins/** r,
  /home/*/.rbenv/rbenv.d/exec/ r,
  /home/*/.rbenv/rbenv.d/exec/gem-rehash.bash r,
  /home/*/.rbenv/shims/rake r,
  /home/*/.rbenv/version r,
  /home/*/.rbenv/versions/ r,
  /home/*/.rbenv/versions/2.3.1/bin/** rix,
  /home/*/.rbenv/versions/2.3.1/lib/** mr,
  /proc/*/status r,
  /usr/bin/cut rix,
  "/usr/bin/env bash" ix,
  /usr/bin/head rix,
  /vagrant/.rspec r,
  /vagrant/rakefile r,
  /vagrant/spec/ r,
  /vagrant/spec/files/ r,
  /vagrant/spec/files/command_spec.rb r,
  /vagrant/spec/files/file_spec.rb r,
  /vagrant/spec/files/network_spec.rb r,
  /vagrant/spec/files/temp/ r,
  /vagrant/spec/spec_helper.rb r,

}
