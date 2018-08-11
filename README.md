# CTask: 一个基于Ansible的运维任务管理工具

## 0. 阅读

### 维护代码，提交到 gitlab

1.使用前准备工作
  首先安装 ansible version 2.6.1
  ansible 给配置主机设置免密登录，添加 key：
  
    ```
    ssh-copy-id -i ~/.ssh/id_rsa.pub root@localhost
  
    ```
  2.用这个项目把ansible.cfg的配置更新到/etc/ansible/ansible.cfg里
  
  Usage:
  
  修改 hosts 文件，添加配置主机IP
  ```
  vim hosts
  [mdp]
  127.0.0.1
  
  ```
  修改 mdp 容器内各服务组件的配置文件
  ```
  vim group_vars/mdp_service_configs.yml
  
  ```
  修改 MDP 配置文件存放路径，默认路径: /data/conf
  ```
  # MDP CONFIGURATIONS LOCATION:
  mdp_conf_dir: /path/conf
  
  ```
  修改 consul IP  和  主机名
  ```
  ########################################
  # CONSUL IP, DEFAULT PORT: 8500, HOSTNAME, NODEREPORT PORT: 3333
  consul_host: 9.8.8.8
  consul_nodename: dn1
  
  ```
  修改客户ID
  ```
  ########################################
  
  spring_active: demo
  
  ```
  修改 ES 集群的主机IP
  ```
  ########################################
  
  # APL (es-sql-engine)
  
  ########################################
  # es cluster nodes host
  apl_elasticsearch_configuration_ip: 
    - 127.0.0.1
    - 127.0.0.1
  
  ```
  修改 gateway 主机IP
  ```
  ######################################
  # gateway default port: 9995, and ES cluster node ip 
  gateway_host: 127.0.0.1 
  
  ```
  修改 MySQL 主机IP
  ```
  ######################################
  # node-report config 
  mysql_host: 127.0.0.1
  
  ```
  修改 rbac 主机IP
  ```
  ######################################
  # rbac default port: 8867
  rbac_host: 127.0.0.1
  
  ```
  修改 scheduler 主机IP
  ```
  ######################################
  # scheduler default port: 8889
  scheduler_host: 127.0.0.1
  
  ```
  修改 executors 主机IP
  ```
  ######################################
  # executors default port: 7010
  executors_host: 127.0.0.1
  
  ```
  修改 summer 主机IP
  ```
  ######################################
  # summer default port: 8081
  summer_host: 127.0.0.1
  
  ```
3.工具使用方法：
  shell: CMD
  ```
  ansible-playbook -i hosts playbooks/mdp/mdp.yaml 
  
  ```
  
