#! /bin/bash

arch () {
	# Updates repo databases
	sudo pacman -Syy
	# Used to check certs of packages
	sudo pacman -S archlinux-keyring
	# Updates system
	sudo pacman -Syu

	#Packages need for Qemu and KVM to work
	sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat dmidecode
	sudo pacman -S ebtables iptables

	# Tools for working with vm disk images
	sudo pacman -S libguestfs
	# Enables and start libvirt service
	sudo systemctl enable libvirtd.service
	sudo systemctl start libvirtd.service

	# Check status
	sudo systemctl status libvirtd.service

	read

	echo "Find unix_socket_group = \"libvirt\" and uncomment it"
	echo "Also find unix_sock_rw_perms = \"0770\""
	read
	sudo vim /etc/libvirt/libvirtd.conf

	# Add user to need group
	sudo usermod -a -G libvirt $(whoami)
	newgrp libvirt
	sudo systemctl restart libvirtd.service
}

checkDistro () {
	distro=$(grep "^ID=" /etc/os-release | cut -d "=" -f 2)
	
	case $distro in
		manjaro)
			arch
			;;
		
		ubuntu)
			echo "Ubuntu"
			;;
	esac
}

vmSupported () {
	vmsupport=$(sudo lscpu | grep Virtualization | cut -d ":" -f 2)

	case $vmsupported in
		AMD-V)
			support=true
			;;
		VT-x)
			support=true
			;;
		*)
			support=false
			;;
	esac
}

vmSupported

if [ $support ]; then
	checkDistro
fi
