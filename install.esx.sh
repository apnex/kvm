#!/bin/bash

virt-install \
	--connect=qemu:///system \
	--name esx.iso \
	--ram 4096 \
	--vcpus=4 \
	--cpu Broadwell-noTSX-IBRS,require=vmx \
	--features kvm_hidden=on \
	--virt-type=kvm \
	--os-type=generic \
	--hvm \
	--cdrom esx.iso \
	--disk path=esx.iso.qcow2,format=qcow2,bus=sata,size=20 \
	--boot hd,cdrom,network \
	--network network=pxe,model=vmxnet3,mac="00:de:ad:be:ef:11" \
	--graphics vnc \
	--video qxl \
	--arch=x86_64 \
	--force
#	--network network=pxe,model=vmxnet3,mac="54:52:00:be:ef:11" \
