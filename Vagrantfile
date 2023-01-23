# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "generic/ubuntu2204"
  config.vm.base_address = "192.168.1.253"
  config.vm.synced_folder "./", "/vagrant"
  config.ssh.forward_agent = true

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "/vagrant/provision/playbook.yml"
  end

end
