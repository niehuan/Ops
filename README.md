# 使用

安装 ansible version 2.6.1
ansible 给配置免密登录添加key：

```
ssh-copy-id -i ~/.ssh/id_rsa.pub root@<HOSTNAME>
```

## yum源

需要指定yum源压缩包解压缩后yum源的绝对路径。

初始化系统的过程中会在被指定为yum仓库的机器上的80端口打开nginx做yum源。在起docker之前会关掉yum仓库。可以通过设置```always_up: true```让yum仓库一直运行。


### yum源需要依赖的rpm包

有离线安装需求的情况下要准备下列rpm包：

- deltarpm-3.6-3.el7.x86_64.rpm
- python-deltarpm-3.6-3.el7.x86_64.rpm
- libxml2-python-2.9.1-6.el7_2.3.x86_64.rpm
- createrepo-0.9.9-28.el7.noarch.rpm

**注意，包名称名称必须保持一致，如果更改包名称，请在environments/defaults/main.yml配置文件里找到对应的包名称配置，在group_vars配置文件里重新定义覆盖之。**