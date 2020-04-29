# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "test"
  config.vm.network "private_network", type: "dhcp" 
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provider "virtualbox" do |vb|
    vb.name = "test"
    vb.memory = "1024"
  end
  config.vm.provision :shell, path: "bootstrap.sh"
end
