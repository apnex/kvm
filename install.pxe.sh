#!/bin/bash
virt-install \
	--connect=qemu:///system \
	--name esx.pxe \
	--memory 4096 \
	--vcpus 4 \
	--cpu Broadwell-noTSX-IBRS,require=vmx \
	--features kvm_hidden=on \
	--virt-type=kvm \
	--os-type=generic \
	--hvm \
	--disk path=esx.pxe.qcow2,format=qcow2,bus=sata,size=20 \
	--boot hd,cdrom,network \
	--network network=pxe,model=vmxnet3 \
	--graphics vnc \
	--video qxl \
	--arch=x86_64 \
	--force
