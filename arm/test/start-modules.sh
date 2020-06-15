set -x
./rtifconfig rteth0 up 192.168.1.20
./rtifconfig rtlo up 127.0.0.1
# we should wait for rteth0 to be ready
./rtroute solicit 192.168.1.30 dev rteth0
./rtroute solicit 192.168.1.40 dev rteth0

