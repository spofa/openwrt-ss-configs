```
# m h  dom mon dow   command
*/30 * * * * isfound=$(ps | grep "ss-redir" | grep -v "grep"); if [ -z "$isfound" ]; then echo "$(date): restart ss-redir...">>/tmp/log/ss-monitor.log && /etc/init.d/shadowsocks restart; fi
* 2 12 * * /usr/bin/chinalist
10 4 * * * /etc/init.d/shadowsocks reload
```
