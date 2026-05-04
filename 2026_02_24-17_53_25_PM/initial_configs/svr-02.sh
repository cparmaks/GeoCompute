# Tagged
#======================================================================#
ip link add link eth1 name eth1.200 type vlan id 200
ip addr add 172.16.10.20/24 dev eth1.200
ip link set eth1.200 up

# UnTagged
#======================================================================#
ip link add link eth2 name eth2
ip addr add 172.16.20.20/24 dev eth2
ip link set eth2 up

# Optional
#======================================================================#
ip link add link eth3 name eth3
ip addr add 172.16.30.20/24 dev eth3
ip link set eth3 up
ip link add link eth3 name eth3.400 type vlan id 400
ip addr add 172.16.40.11/24 dev eth3.400
ip link set eth3.400 up