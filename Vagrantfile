Vagrant.configure("2") do |config|
  config.berkshelf.enabled = true
  config.cache.auto_detect = true
  config.omnibus.chef_version = :latest

  config.vm.define :centos6 do |centos6|
    centos6.vm.box      = 'opscode-centos-6.4'
    centos6.vm.box_url  = 'https://opscode-vm.s3.amazonaws.com/vagrant/opscode_centos-6.4_provisionerless.box'
    centos6.vm.hostname = 'protobuf-centos-6'
  end

  config.vm.define :ubuntu1204 do |ubuntu1204|
    ubuntu1204.vm.box      = 'opscode-ubuntu-12.04'
    ubuntu1204.vm.box_url  = 'https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box'
    ubuntu1204.vm.hostname = 'protobuf-ubuntu-1204'
  end

  config.vm.define :ubuntu1210 do |ubuntu1210|
    ubuntu1210.vm.box      = 'opscode-ubuntu-12.10'
    ubuntu1210.vm.box_url  = 'https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.10_provisionerless.box'
    ubuntu1210.vm.hostname = 'protobuf-ubuntu-1210'
  end

  config.vm.define :ubuntu1304 do |ubuntu1304|
    ubuntu1304.vm.box      = 'opscode-ubuntu-13.04'
    ubuntu1304.vm.box_url  = 'https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-13.04_provisionerless.box'
    ubuntu1304.vm.hostname = 'protobuf-ubuntu-1304'
  end

  config.vm.network :private_network, ip: '192.168.50.10'

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", 1024]
  end

  config.vm.provision :chef_solo do |chef|
    chef.log_level         = :debug

    chef.json = {
      
    }

    chef.run_list = %w{
      recipe[protobuf]
    }
  end
end