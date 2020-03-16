# nano /etc/default/grub ## APPEND systemd_unified_cgroup_hierarchy=0
# grub2-mkconfig > /boot/efi/EFI/fedora/grub.cfg
# grub2-mkconfig > /boot/grub2/grub.cfg
# echo 'options kvm_intel nested=1' >> /etc/modprobe.d/kvm.conf
# echo 'options kvm ignore_msrs=1' >> /etc/modprobe.d/kvm.conf

virt-host-validate
egrep -c '(vmx|svm)' /proc/cpuinfo
cat /proc/cmdline
dmesg | grep IOMMU

# want Y to be returned
printf "/sys/module/kvm/parameters/ignore_msrs "
cat /sys/module/kvm/parameters/ignore_msrs

# want N to be returned
printf "/sys/module/kvm_intel/parameters/enable_apicv "
cat /sys/module/kvm_intel/parameters/enable_apicv

# want Y to be returned
printf "/sys/module/kvm_intel/parameters/nested "
cat /sys/module/kvm_intel/parameters/nested
