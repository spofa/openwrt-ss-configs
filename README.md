# openwrt-ss-configs

本项目是基于ar71xx运行OpenWrt 15.05.1后，运行Shadowsocks-libev的高级配置，支持远程加密的配置文件更新。

- 通过[`/etc/servers`](https://github.com/gnu4cn/openwrt-ss-configs/blob/master/shadowsocks/etc/servers.conf)文件，及[`/etc/init.d/shadowsocks`](https://github.com/gnu4cn/openwrt-ss-configs/blob/master/shadowsocks/etc/init.d/shadowsocks), 配合[`/usr/bin/shadowsocks-firewall`](https://github.com/gnu4cn/openwrt-ss-configs/blob/master/shadowsocks/usr/bin/shadowsocks-firewall), 实现多线路并发负载均衡。
- 导入私钥，实现`/etc/servers.conf`加密传输。
- 经由反向SSH Tunnel，实现远程管理。
- 通过[`/usr/bin/update`](https://github.com/gnu4cn/openwrt-ss-configs/blob/master/shadowsocks/usr/bin/update)实现配置文件远程更新，用于投送新的`/etc/servers.conf`配置及错误修正。
