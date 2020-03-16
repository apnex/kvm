#!/bin/bash

virsh net-define pxe.network.xml
virsh net-autostart pxe
virsh net-start pxe
