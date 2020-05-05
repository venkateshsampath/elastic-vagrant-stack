Vagrant.configure("2") do |config|
  
  # ======== MASTER ========
  config.vm.define "master" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "es-master"
    subconfig.vm.network :private_network, ip: "10.0.0.10"
    subconfig.vm.network "forwarded_port", guest: 9200, host: 9200
    
    subconfig.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end

    subconfig.vm.provision "file",
      source: "./config/repo/elastic.repo",
      destination: "~/elastic.repo"
    
    subconfig.vm.provision "file",
      source: "./config/es-config/es-master.yml",
      destination: "~/elasticsearch.yml"

    subconfig.vm.provision "shell", path: "config/shell-scripts/common.sh"
    subconfig.vm.provision "shell", path: "config/shell-scripts/elasticsearch.sh"

  end


  # ======== KIBANA ========
  config.vm.define "kibana" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "kibana"
    subconfig.vm.network :private_network, ip: "10.0.0.11"
    subconfig.vm.network "forwarded_port", guest: 5601, host: 5601
    
    subconfig.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
    end

    subconfig.vm.provision "file",
      source: "./config/repo/elastic.repo",
      destination: "~/elastic.repo"
    
    subconfig.vm.provision "file",
      source: "./config/es-config/kibana.yml",
      destination: "~/kibana.yml"
    
    subconfig.vm.provision "shell", path: "config/shell-scripts/common.sh"
    subconfig.vm.provision "shell", path: "config/shell-scripts/kibana.sh"
  end


  # ======== Logstash ========
  config.vm.define "logstash" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "logstash"
    subconfig.vm.network :private_network, ip: "10.0.0.13"
    
    subconfig.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end

    subconfig.vm.provision "file",
      source: "./config/repo/elastic.repo",
      destination: "~/elastic.repo"
    
    subconfig.vm.provision "file",
      source: "./config/es-config/pipeline.conf",
      destination: "~/pipeline.conf"
    
    subconfig.vm.provision "file",
      source: "./config/es-config/filebeat.yml",
      destination: "~/filebeat.yml"
    
    subconfig.vm.provision "shell", path: "config/shell-scripts/common.sh"
    subconfig.vm.provision "shell", path: "config/shell-scripts/logstash.sh"
    subconfig.vm.provision "shell", path: "config/shell-scripts/filebeat.sh"

  end
  

  # ======== DATA 1 ========
  config.vm.define "data-1" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "es-data-1"
    subconfig.vm.network :private_network, ip: "10.0.0.14"
    
    subconfig.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end

    subconfig.vm.provision "file",
      source: "./config/repo/elastic.repo",
      destination: "~/elastic.repo"
    
    subconfig.vm.provision "file",
      source: "./config/es-config/es-data-1.yml",
      destination: "~/elasticsearch.yml"
    
    subconfig.vm.provision "shell", path: "config/shell-scripts/common.sh"
    subconfig.vm.provision "shell", path: "config/shell-scripts/elasticsearch.sh"

  end
  
  
  # ======== DATA 2 ========
  config.vm.define "data-2" do |subconfig|
    subconfig.vm.box = "centos/7"
    subconfig.vm.hostname = "es-data-2"
    subconfig.vm.network :private_network, ip: "10.0.0.15"
    
    subconfig.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end

    subconfig.vm.provision "file",
      source: "./config/repo/elastic.repo",
      destination: "~/elastic.repo"
    
    subconfig.vm.provision "file",
      source: "./config/es-config/es-data-2.yml",
      destination: "~/elasticsearch.yml"
    
    subconfig.vm.provision "shell", path: "config/shell-scripts/common.sh"
    subconfig.vm.provision "shell", path: "config/shell-scripts/elasticsearch.sh"

  end

end
