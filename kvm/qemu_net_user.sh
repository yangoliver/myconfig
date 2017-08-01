#!/bin/bash
#
# Notes:
# - initrd
#   The initrd option might not be required, if kernel could build the
#   boot disk drivers with in-kernel mode.
# -S
#  It might not be required, if we don't want to debug early boot issue.
#
# -kgdboc
#  Qemu has its built-in kernel debug capabilities and gdb debug server.
#  The kgdb is not required, if kdump in qemu could works well. However,
#  if kdump couldn't work, and qemu dump couldn't make sure all CPUs got
#  freezon by panic routine. The kgdb driver could make sure that by
#  invoking the NMI IPIs against all CPUs. Then we could trigger qemu
#  dump to save the core file.
#


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
	-S \
	-append "root=/dev/sda1 rw console=ttyS0,115200 kgdboc=kbd,ttyS0,115200 nmi_watchdog=nopanic softlockup_panic=0 crashkernel=auto" \
	-drive file=/dev/sdb,id=foo1 \
	-nographic \
	-vga none \
	-serial mon:telnet::4444,server,nowait \
	-monitor stdio \
	-netdev user,id=ceth0,hostfwd=tcp::5555-:22 \
	-device driver=virtio-net,netdev=ceth0,mac=02:42:ac:11:00:02
