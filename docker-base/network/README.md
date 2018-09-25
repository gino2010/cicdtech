# Docker Network Test

在借鉴他人docker-compose文件时会经常看见network选项，这里将逐一实验，以加深理解

You will often see the network option when learning from other people's docker-compose files. 
Here I will experiment one by one to deepen my understanding.

目前知道docker默认提供五种网络驱动模式包括:

- bridge
- host
- overlay
- macvlan
- none

### Environment

Linux 主机

### Test

计划相关实验使用busybox镜像完成

#### bridge

默认的网络驱动模式，docker容器之间通过veth进行通讯。
与主机网络互通
自定义 bridge网络中，内嵌dns server将工作，可以ping容器名称，即通过容器名进行通信

#### host

与docker主机共享网络栈。 ifconfig可以看到所有主机的网卡。
使用场景为，高效网络请求场景。 同时需要注意docker 容器与主机之间的端口冲突问题

#### overlay

#### macvlan

#### joined

两个容器之间共享网络栈，两个容器将拥有相同的ip和mac地址
使用场景例如监控，即需要独立而又需要两个容器网络高度一致的场景。

#### none

完全没有网络，完全隔离。

### Reference
[CloudMan](https://www.cnblogs.com/CloudMan6/default.html?page=19)
[CloudMan](https://mp.weixin.qq.com/s/7o8QxGydMTUe4Q7Tz46Diw)