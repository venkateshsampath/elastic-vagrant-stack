# elastic-vagrant-stack
##### Elastic stack with 3 node elastic cluster in three differnet VMS
![ELK topology](elastic-stack-topology.png)

## vagrant commands
To create and provision the topology use below command
```bash
vagrant up
```
Automaticall elasticsearch cluster,kibana,logstash and filebeat will be configured and pipeline will be build for ready to use.

port forward is configured for ES and Kibana so elasticsearch can be accessed from localhost using `127.0.0.1:9200`
and kibana can be access from localhost using `127.0.0.1:5601`


Insteas if each vm has to be created and provisioned independently, below commands can be used for each of them:

```bash
vagrant up esmaster
vagrant up esdata01
vagrant up esdata02
vagrant up logstash-filebeat
vagrant up kibana
```

To ssh into any of the machine use 
```bash
vagrant ssh "machine-name"
example : vagrant ssh esmaster
```

To stop all the vagrant machine (or specify specific vagrant machine)
```
vagrant halt
```

To stop and deletes all traces of all the vagrant machine (or specify specific vagrant machine)
```
vagrant destroy
```

##### Elastic stack with single node elastic cluster in a single  VMS
![ELK single node topology](elastic-stack-singlenode-topology.png)





