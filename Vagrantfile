# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/xenial64"

  # Put name for your VM here
  # config.vm.provider "virtualbox" do |v|
  #   v.name = ""
  # end

  config.vm.provision "file", source: "requirements.txt", destination: "requirements.txt"

  # NOTE: this kind of provision still runs the process in privileged mode
  # config.vm.provision "shell", path: "provision.sh", privileged: false
  config.vm.provision "main", type: "shell" do |sh|
    sh.privileged = false
    sh.path = "provision.sh"
  end

  config.vm.provision "golang", type: "shell" do |sh|
    sh.privileged = false
    sh.path = "go-provision.sh"
  end

end
