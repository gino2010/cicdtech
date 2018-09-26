# Docker Network Test

在借鉴他人docker-compose文件时会经常看见network选项(当然也是docker network参数)，这里将逐一实验，以加深理解

You will often see the network option when learning from other people's docker-compose files. 
Here I will experiment one by one to deepen my understanding.

### Environment

Linux 主机

### Test

计划相关实验使用busybox镜像完成

#### none

完全没有网络，完全隔离。

#### host

与docker主机共享网络栈。 ifconfig可以看到所有主机的网卡。

使用场景为，高效网络请求场景。 同时需要注意docker 容器与主机之间的端口冲突问题

#### bridge

默认的网络驱动模式，docker容器之间通过veth进行通讯。

与主机网络互通

自定义 bridge网络中，内嵌dns server将工作，可以ping容器名称，即通过容器名进行通信

#### joined

两个容器之间共享网络栈，两个容器将拥有相同的ip和mac地址

使用场景例如监控，即需要独立而又需要两个容器网络高度一致的场景。

#### overlay

用于跨物理主机容器通信，配合docker machine使用。我估计也会配合docker swarm和kubernets，也许后面会实验到

需要在docker machine 环境下对其进行实验

使用一台作为注册服务器主机，安装consul和docker machine

两台作为docker 主机，分别运行busybox在overlay 网络中，可以互通

#### macvlan

macvlan 本身是 linxu kernel 模块，其功能是允许在同一个物理网卡上配置多个 MAC 地址，即多个 interface，每个 interface 可以配置自己的 IP。macvlan 本质上是一种网卡虚拟化技术。

注意docker 没有为 macvlan 提供 DNS 服务，这点与 overlay 网络是不同的

### Reference
[CloudMan](https://www.cnblogs.com/CloudMan6/default.html?page=19)
[CloudMan](https://mp.weixin.qq.com/s/7o8QxGydMTUe4Q7Tz46Diw)