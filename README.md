# Automata 部署工具

# ansible

开发mdp_1.6.2分支时使用的是ansible 2.6.1版本。

目录结构参考ansible最佳实践：https://docs.ansible.com/ansible/latest/user_guide/playbooks_best_practices.html#directory-layout

ansible playbook在automata/ansible目录下。

group_vars的配置文件是在开发过程中预计要交付给使用者修改的配置文件，其他预留配置可以隐藏在各个roles内的default配置里。

inventory是用来部署和测试的主机信息。

roles/environments包含了通用的服务和环境准备的一些工作。
roles/mdp包含了启动mdp所需的操作。

注意ansible 的block上使用delegate_to不生效。因此要尽量把每个操作拆细，不使用block。

# 脚本

automata 的 mdp 1.6.2分支提供了一个封装好的 aone-mdp 命令（脚本）。用rpm安装automata工具后就可以直接在命令行使用 aone-mdp 命令操作automata。

这些脚本都在automata/tools下。

# 测试

在机器上测试可以使用脚本：``` automata/tools/scripts/test_run.sh ```

# 使用

使用文档参考conflue。

## 版本发布相关准备工作

版本发布时需要关注：
 1. 各个mdp服务的配置文件是否有修改，如果修改需要在```automata/ansible/roles/mdp/pre-deploy/templates```对应的服务目录下修改文件
 2. sql脚本是否有修改，如果有修改要更新```automata/ansible/roles/mdp/services/files```目录下的对应文件
 3. 新版本要checkout新分支，分支命名方式是```${PRODUCT_NAME}_${VERSION_NUMBER}```，使用branch名作为打rpm包时的version信息。

automata根据git分支管理不同产品不通版本的部署工具内容。

用来打automata rpm包的spec文件在dev-ops/rpmspecs项目内维护。

rpmspecs只维护master版本，在rpmspecs/automata内对应版本的包维护一个automata-${branch}.spec。(TODO)

automata包的版本号在git上的spec文件里不做修改，每次打包根据branch信息替换掉Version段内容后使用替换的spec文件打包。

mdp_1.6.2版本依赖collect_agent rpm包，collect-agent打包已经更新到jenkins上，在版本发布时需要更新git上的rpmspec/collect-agent/SOURCES里的脚本后用jenkins打rpm包。

spec文件里需要把inventory和group_vars配置文件放到/etc/automata对应目录，roles放到/usr/share/automata的对应目录，tools的aome-mdp文件放到/usr/bin目录下。

spec文件内容参考：
- https://fedoraproject.org/wiki/Packaging:RPMMacros
- https://rpm-packaging-guide.github.io/

zookeeper和kafaka是hdp 2.5.3.0_37的包。zookeeper-server的依赖包里包含的redhat-lbs*包数量过多，而且在部署过程中完全没有安装的必要，因此使用rpmspecs项目内自定义的redhat-lsb.spec打空包。

实施部署时automata项目依赖的rpm包：
  -  automata
  -  collect-agent
  -  zookeeper
  -  elasticsearch
  -  kafka
  -  ranger_2_5_3_0_37-kafka-plugin
  -  hdp-select
  -  nginx
  -  jq
  -  python-crypto
  -  python-paramiko
  -  python2-jmespath
  -  python-setuptools
  -  python-httplib2
  -  sshpass
  -  python-keyczar
  -  python-six
  -  python-configparser


# 关于nginx

nginx是在开始启动，支持了yum源和gem源的安装，在启动docker前要关闭独立的nginx。

另外如果已经有容器在运行中，需要先停止容器，再重新部署mdp。（fe容器里有nginx服务）

# debug:

ansible-playbook 的 debug 方式是在ansible-playbook命令后加 -vvvv。
另外如果修改了roles目录结构后无法找到对应roles文件，需要把/etc/ansible/ansible.cfg内容改成automata/ansible.cfg的内容，注意修改文件路径。
