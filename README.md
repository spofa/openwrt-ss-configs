# openwrt-ss-configs

本项目是基于ar71xx平台无线路由器，运行OpenWrt 15.05.1后，运行Shadowsocks-libev的高级配置，支持远程加密的配置文件更新。

2017-1-5
- 通过改进`/etc/init.d/shadowsocks`，实现对`servers.conf`的随机化处理，得到`/etc/servers.used`独特文件，保证不同路由器上的`serverList`配置不一样，以提高DNS查询及连接速度的提升。

- 通过[`/etc/servers.conf`](https://github.com/gnu4cn/openwrt-ss-configs/blob/master/shadowsocks/etc/servers.conf)文件，及[`/etc/init.d/shadowsocks`](https://github.com/gnu4cn/openwrt-ss-configs/blob/master/shadowsocks/etc/init.d/shadowsocks), 配合[`/usr/bin/shadowsocks-firewall`](https://github.com/gnu4cn/openwrt-ss-configs/blob/master/shadowsocks/usr/bin/shadowsocks-firewall), 实现多线路并发负载均衡。
- 导入私钥，实现`/etc/servers.conf`加密传输(使用GnuPG)。
- 经由反向SSH Tunnel，实现远程管理。
- 通过[`/usr/bin/update`](https://github.com/gnu4cn/openwrt-ss-configs/blob/master/shadowsocks/usr/bin/update)实现配置文件远程更新，用于投送新的`/etc/servers.conf`配置及错误修正。

如你打算采用本项目方案，请生成自己的gpg密钥，将私钥导入无线路由器，并对一些配置进行调整，即可使用。

# [XFOSS.COM](https://xfoss.com/)
