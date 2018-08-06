ansible要给用的机器推key：
  ssh-copy-id -i ~/.ssh/id_rsa.pub root@localhost

ansible version 2.6.1

用这个项目把ansible.cfg的配置更新到/etc/ansible/ansible.cfg里


Usage:

```
echo "
[mdp]
127.0.0.1
...
" > hosts

```
Change mdp conf variables
```
vim group_vars/mdp_service_configs.yml

# MDP CONFIGURATIONS LOCATION:
mdp_conf_dir: /path/conf

########################################

# CONSUL CONFIGURATIONS

########################################
# CONSUL IP & DEFAULT PORT & hostname
consul:
  host: 127.0.0.1
  port: 8500
  port_text: 3333
  node: dn1

########################################

spring_active: demo

########################################
# COLLECT-AGENT data path and default port
# default path: ../data

collect_agent:
  path: ../data
  port: 5619

########################################

# APL (es-sql-engine)

########################################

apl:
  # default: port: 8900
  port: 8900
  elasticsearch_configuration:
    - ip: 127.0.0.1
      port: 9300
      restport: 9200
    - ip: ...
      port: ...
      restport: ...
  # interval is time in millisecond

  datasource_refresh_interval: 300000

#############galaxy##################
# galaxy default port: 9999, and es cluster nodes
galaxy:
  # default: port: 9999
  port: 9999
  es_config:
    - host: 127.0.0.1
      port: 9300
    - host: ...
      port: ...
  kafka_config:
    - host: 127.0.0.1
      port: 6667
    - host: ...
      port: ...

######################################
# gateway default port: 9995, ip: x.x.x.x 
gateway:
  port: 9995
  cluster_nodes: 127.0.0.1 

######################################
# nodereport config 
mysql:
  host: 127.0.0.1

######################################
# rbac default port: 8867
rbac:
  port: 8867

######################################
# scheduler default port: 8889
scheduler:
  port: 8889

######################################
# scheduler_executors default port: 7010
scheduler_executors:
  host: 127.0.0.1
  port: 7010

######################################
# summer default port: 8081
summer:
  port: 8081

```

shell: CMD
```
ansible-playbook -i hosts playbooks/mdp/mdp.yaml 

```

