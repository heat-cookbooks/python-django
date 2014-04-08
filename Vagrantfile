# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.hostname = "python-django-berkshelf"

  config.vm.define :ubuntu do |ubuntu|
    ubuntu.vm.box = "opscode-ubuntu-12.04"
    ubuntu.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-ubuntu-12.04.box"
  end

  config.vm.network :private_network, ip: "33.33.33.10"
  config.omnibus.chef_version = :latest

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.json = {
      'django' => {
      'database_host' => 'SOMETHING.rackspaceclouddb.com',
      'database_name' => 'mydb',
      'database_user' => 'mydbuser',
      'database_password' => 'p@ssword',
      'app_name' => 'django',
      'project_name' => 'myproject',
      'virtualenv' => 'virtualenv',
      'username' => 'pydev',
      'django_admin_user' => 'djangouser',
      'django_admin_email' => 'user@domain.com'
      }
    }

    chef.run_list = [
        "recipe[python-django::default]"
    ]
  end
end
