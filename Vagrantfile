Vagrant.configure("2") do |config|
  config.vm.define "kibana" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "kibana"
    subconfig.vm.network :private_network, ip: "10.0.0.10"
    subconfig.vm.network "forwarded_port", guest: 9200, host: 9200
    subconfig.vm.network "forwarded_port", guest: 5602, host: 5602
    subconfig.vm.provider "virtualbox" do |v|
      v.memory = 2048
      v.cpus = 2
    end
  end
  config.vm.define "esmaster" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "esmaster"
    subconfig.vm.network :private_network, ip: "10.0.0.11"
    subconfig.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 1
    end
  end
  config.vm.define "esdata01" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "esdata01"
    subconfig.vm.network :private_network, ip: "10.0.0.12"
    subconfig.vm.provider "virtualbox" do |v|
      v.memory = 1024
    end
  end
  config.vm.define "esdata02" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "esdata02"
    subconfig.vm.network :private_network, ip: "10.0.0.14"
  end
  config.vm.define "logstash" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "logstash"
    subconfig.vm.network :private_network, ip: "10.0.0.13"
  end
end