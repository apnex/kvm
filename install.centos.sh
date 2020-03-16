#!/bin/bash
virt-install \
	--connect=qemu:///system \
	--name centos.iso \
	--memory 2048 \
	--vcpus 2 \
	--os-variant centos7.0 \
	--cdrom centos.iso \
	--cpu Westmere,require=vmx \
	--features kvm_hidden=on \
	--disk path=centos.pxe.qcow2,format=qcow2,bus=sata,size=8 \
	--boot hd,cdrom,network \
	--network network=default,model=vmxnet3 \
	--graphics vnc \
	--video qxl \
	--arch=x86_64 \
	--force
