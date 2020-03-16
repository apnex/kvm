#!/bin/bash

# set the firewall
firewall-cmd --zone=trusted --change-interface=virbr0
firewall-cmd --zone=trusted --change-interface=virbr1
firewall-cmd --zone=trusted --list-interfaces
