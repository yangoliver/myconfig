#!/bin/bash
kernel=/boot/vmlinuz-3.10.0
initrd=/boot/initramfs-3.10.0.img
sudo /usr/libexec/qemu-kvm \
	-machine pc,accel=kvm,usb=off \
	-name b794104bff85 \
	-m 2G \
	-cpu host \
	-smp 2,sockets=2,cores=6,threads=1,maxcpus=32 \
	-rtc base=utc,driftfix=slew \
	-kernel $kernel \
	-initrd $initrd \
	-s \
	-append "root=/dev/sda1 rw console=ttyS0,115200 kgdboc=kbd,ttyS0,115200 kgdbwait crashkernel=auto" \
	-drive file=/dev/sdb,id=foo1 \
	-nographic \
	-vga none \
	-serial mon:telnet::4444,server,nowait \
	-monitor stdio \
	-netdev user,id=ceth0,hostfwd=tcp::5555-:22 \
	-device driver=virtio-net,netdev=ceth0,mac=02:42:ac:11:00:02
