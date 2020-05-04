Vagrant.configure("2") do |config|
  config.vm.define "Kibana" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "Kibana"
    subconfig.vm.network :private_network, ip: "10.0.0.10"
    subconfig.vm.network "forwarded_port", guest: 9200, host: 9200
    subconfig.vm.network "forwarded_port", guest: 5602, host: 5602
    subconfig.vm.provider "virtualbox" do |v|
      v.memory = 2048
      v.cpus = 2
    end
  end
  config.vm.define "ESMaster" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "ESMaster"
    subconfig.vm.network :private_network, ip: "10.0.0.11"
    subconfig.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 1
    end
  end
  config.vm.define "ESData" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "ESData"
    subconfig.vm.network :private_network, ip: "10.0.0.12"
  end
  config.vm.define "ESData2" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "ESData2"
    subconfig.vm.network :private_network, ip: "10.0.0.14"
  end
  config.vm.define "Logstash" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "Logstash"
    subconfig.vm.network :private_network, ip: "10.0.0.13"
  end
end