#!/bin/sh    
fqdnservers=`cat /etc/servers-fqdn.conf`;

for server in $fqdnservers;
do
	name=`echo $server|awk '{split($0,a,":"); print a[1];}'`;
        port=`echo $server|awk '{split($0,a,":"); print a[2];}'`;
        cred=`echo $server|awk '{split($0,a,":"); print a[3];}'`;

	addrs=`/usr/bin/nslookup $name | awk '/Address 1/{print substr($3,1)}'`
	
	for tmp_addr in $addrs;
	do
		if [ "$tmp_addr" != "127.0.0.1" ]; then
			addr=$tmp_addr;
			echo $addr
		fi;
	done;
	        
done;
