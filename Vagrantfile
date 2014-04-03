# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.hostname = "python-django-berkshelf"

  config.vm.define :centos do |centos|
    centos.vm.box = "Berkshelf-CentOS-6.3-x86_64-minimal"
    centos.vm.box_url = "https://dl.dropbox.com/u/31081437/Berkshelf-CentOS-6.3-x86_64-minimal.box"
  end

  config.vm.define :ubuntu do |ubuntu|
    ubuntu.vm.box = "opscode-ubuntu-12.04"
    ubuntu.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-ubuntu-12.04.box"
  end

  config.vm.network :private_network, ip: "33.33.33.10"

  config.berkshelf.berksfile_path = "./Berksfile"
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.json = {
      'python' => {
        'install_method' => 'source',
        'install_type' => 'altinstall'
      }
    }

    chef.run_list = [
        "recipe[python::default]",
        "recipe[python-django::default]"
    ]
  end
end
