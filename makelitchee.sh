make && rsync -haxvPS litchee root@192.168.22.134:/usr/bin/ && ssh root@192.168.22.134 killall -9 litchee
