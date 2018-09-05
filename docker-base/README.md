# Docker

整理一下在Ubuntu中安装Docker Kubernetes过程，便于今后查看。

已经用了许久的docker，非常好用。已经成为开发人员，DevOps团队标配。相关技术也要继续深入下去

我平时的开发环境主要在mac os x下，docker安装也相对简单

开发部署环境，Ubuntu是我个人比较喜欢的一个Linux发行版本，所以这里以此为例

### Install docker

[Official Document](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

官方文档说的很清楚，这里只需要提醒一点。由于国内最近有时会屏蔽docker.com(原因难以想象)，所以在安装时需要将apt-get 设置代理

`
apt-get -o Acquire::http::proxy="http://127.0.0.1:8000/" XXXX
`

或者，建立配置文件 apt_proxy.conf
```
Acquire::http::proxy "http://127.0.0.1:8000/"; 
Acquire::ftp::proxy "ftp://127.0.0.1:8000/"; 
Acquire::https::proxy "https://127.0.0.1:8000/"; 
```

指定配置文件运行

`
apt-get -c ~/apt_proxy.conf XXXX
`

检查版本

`
docker version
`

### Install docker-compose

[Official Document](https://docs.docker.com/compose/install/)

非常好用的单机编排工具，这个必须有，很有用

检查版本

`
docker-compose version
`

### Install kubernetes

[Official Document](https://kubernetes.io/docs/setup/independent/install-kubeadm/)

这个刚刚开始接触，之前只是单机使用docker，看到越来越多的人使用k8s，所以学习一下多主机管理
检查版本

`
kubectl version
`

好戏才刚刚开始，未完待续......

(尚未形成体系，只是笔记，稍后使用gitbook)