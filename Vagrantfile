# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|

  config.vm.box = 'ubuntu/trusty64'
  config.ssh.forward_agent = true

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "4096"]
  end

  config.vm.network :forwarded_port, guest: 80, host: 8000
  config.vm.network :forwarded_port, guest: 5000, host: 5000
  config.vm.network :forwarded_port, guest: 5432, host: 5430
  config.vm.network :forwarded_port, guest: 5678, host: 5678
  config.vm.network :forwarded_port, guest: 9200, host: 9200
  config.vm.provision :shell, privileged: false, path: 'setup/bootstrap.sh', keep_color: true
end
