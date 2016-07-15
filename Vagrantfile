# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|

  config.vm.box = 'ubuntu/trusty64'
  config.ssh.forward_agent = true

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "4096"]
  end

  config.vm.network :forwarded_port, guest: 81, host: 8001
  config.vm.network :forwarded_port, guest: 5001, host: 5001
  config.vm.network :forwarded_port, guest: 5433, host: 5431
  config.vm.network :forwarded_port, guest: 5679, host: 5679
  config.vm.network :forwarded_port, guest: 9201, host: 9201
  config.vm.provision :shell, privileged: false, path: 'setup/bootstrap.sh', keep_color: true
end
