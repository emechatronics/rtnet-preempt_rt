set -x
#modprobe rtipv4 && modprobe rtudp
./rtifconfig rteth0 up 192.168.1.30
./rtifconfig rtlo up 127.0.0.1
./rtroute solicit 192.168.1.40 dev rteth0

