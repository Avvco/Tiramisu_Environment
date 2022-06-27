# -*- mode: ruby -*-
# vi: set ft=ruby :


# Check plugins
required_plugins = %w(vagrant-reload)

plugins_to_install = required_plugins.select { |plugin| not Vagrant.has_plugin? plugin }
if not plugins_to_install.empty?
  puts "Installing plugins: #{plugins_to_install.join(' ')}"
  if system "vagrant plugin install #{plugins_to_install.join(' ')}"
    exec "vagrant #{ARGV.join(' ')}"
  else
    abort "Installation of one or more plugins has failed. Aborting."
  end
end

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/focal64"

  config.vm.hostname = "Tiramisu"

  config.vm.define "TiramisuVM"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  config.vm.box_check_update = true

  # Increase the boot timeout time
  config.vm.boot_timeout = 1200

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 9000, host: 9000, host_ip: "127.0.0.1"

  # Open port 80, 8081, and 64500 ~ 64550 which 65500 and 65550 are inclusive

  # Nginx
  config.vm.network :"forwarded_port", guest: 80, host: 80

  # phpMyAdmin
  config.vm.network :"forwarded_port", guest: 8081, host: 8081

  for i in 64500..64550
    config.vm.network :"forwarded_port", guest: i, host: i
  end

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.

  # Must synced folder with mode rsync and exclude node_modules to avoid symlinks issues from npm
  #config.vm.synced_folder "./", "/vagrant", type: "rsync", rsync__auto: true, rsync__verbose: true,  rsync__exclude: ['node_modules/']

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #

  config.vm.provider "virtualbox" do |vb|
  #   Display the VirtualBox GUI when booting the machine
      #vb.gui = true
  #
     #Customize the amount of memory on the VM:
    vb.memory = "4096"
  end

  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.

  # run only when vm iniitialize
  config.vm.provision :shell, privileged: true, path: "./installTools.sh"
  config.vm.provision :shell, privileged: true, path: "./installDocker.sh"
  config.vm.provision :reload
  
  # =================================================================
end
