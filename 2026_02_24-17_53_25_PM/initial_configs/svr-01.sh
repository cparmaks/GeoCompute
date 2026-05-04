# Tagged
#======================================================================#
ip link add link eth1 name eth1.200 type vlan id 200
ip addr add 172.16.10.10/24 dev eth1.200
ip link set eth1.200 up

# UnTagged
#======================================================================#
ip link add link eth2 name eth2
ip addr add 172.16.20.10/24 dev eth2
ip link set eth2 up

# Optional
#======================================================================#
ip link add link eth3 name eth3
ip addr add 172.16.30.10/24 dev eth3
ip link set eth3 up
ip link add link eth3 name eth3.400 type vlan id 400
ip addr add 172.16.40.10/24 dev eth3.400
ip link set eth3.400 up

# #PXN#2
# #======================================================================#
# ip link add link eth2 name eth2.200 type vlan id 200
# ip addr add add 172.16.10.11/24 dev eth2.200
# ip link set eth2.200 up


# ip route add 0.0.0.0/0 via 172.16.10.1 dev eth1.200
# ip route add 0.0.0.0/0 via 172.16.10.1 dev eth2.200
