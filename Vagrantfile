Vagrant.configure("2") do |config|

  config.vm.define "esmaster" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "esmaster"
    subconfig.vm.network :private_network, ip: "10.0.0.11"
    subconfig.vm.network "forwarded_port", guest: 9200, host: 9200
    subconfig.vm.provider "virtualbox" do |v|
      v.memory = 1024
    end

    subconfig.vm.provision "file", source: "./config/elasticsearch/master-node-elasticsearch.yml", destination: "~/elasticsearch.yml"
    subconfig.vm.provision "shell", path: "./shell-scripts/common.sh"
    subconfig.vm.provision "shell", path: "./shell-scripts/elasticsearch-master.sh"
  end

  config.vm.define "esdata01" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "esdata01"
    subconfig.vm.network :private_network, ip: "10.0.0.12"
  end

  config.vm.define "esdata02" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "esdata02"
    subconfig.vm.network :private_network, ip: "10.0.0.13"
  end

  config.vm.define "logstash-filebeat" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "logstash-filebeat"
    subconfig.vm.network :private_network, ip: "10.0.0.14"
    subconfig.vm.provision "file", source: "./config/logstash/logstash-pipeline.conf", destination: "~/logstash-pipeline.conf"
    subconfig.vm.provision "file", source: "./config/filebeat/filebeat.yml", destination: "~/filebeat.yml"
    subconfig.vm.provision "shell", path: "./shell-scripts/common.sh"
    subconfig.vm.provision "shell", path: "./shell-scripts/logstash.sh"
    subconfig.vm.provision "shell", path: "./shell-scripts/filebeat.sh"
  end

  config.vm.define "kibana" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "kibana"
    subconfig.vm.network :private_network, ip: "10.0.0.15"
    subconfig.vm.network "forwarded_port", guest: 9200, host: 9200
    subconfig.vm.network "forwarded_port", guest: 5602, host: 5602
    subconfig.vm.provider "virtualbox" do |v|
      v.memory = 2048
      v.cpus = 2
    end
  end
end