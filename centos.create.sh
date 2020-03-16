## boot vm
virt-install --import \
	--name nsx-manager \
	--ram 8192 \
	--vcpus 4 \
	--network=bridge:virbr0,model=e1000 \
	--nographics \
	--disk format=qcow2,path=/var/lib/libvirt/images/\
nsx-unified-appliance-2.3.1.0.0.11294305.ova
#--disk path=nsx-manager-1.1.0.0.0.4446302.qcow2,format=qcow2
