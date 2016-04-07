# -*- mode: ruby -*-
# vi: set ft=ruby :

PORT = 8080
PRIVATE_IP="10.10.10.5"

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: PORT, host: PORT
  config.vm.network "private_network", ip: PRIVATE_IP
  config.vm.provision "shell", path: "install_docker.sh"

  config.vm.provision "docker" do |docker|
    docker.build_image "/vagrant", args: "-t web"
    docker.run "web" , args: "-p #{PORT}:#{PORT}" # container
  end
end
