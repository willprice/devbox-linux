# ArchLinux development environment

WIP

## Install
### Boot into live environment

* Download [Arch Linux ISO](https://www.archlinux.org/download/)
* Write to USB: 
  * Linux: `dd if=archlinux.iso of=/dev/sdb bs=4M status=progress`
  * Windows: Download and run [rufus](https://rufus.akeo.ie/)
* Reboot into live USB

### Install base system

```
# Basic live environment setup
$ loadkeys uk
$ wifi-menu -o wlp4s0

# Run systemd-timesyncd to set clock date
$ timedatectl set-ntp true 

# Partition boot drive into two partition
# 1GB (EFI) + rest (to hold the system)
$ parted /dev/sda mklabel gpt
$ parted /dev/sda mkpart ESP fat32 1MiB 1025MiB
$ parted /dev/sda set 1 boot on
$ parted /dev/sda mkpart primary ext4 1025MiB 100%

# Create volume group to hold all disks
$ vgcreate VolGroupSystem /dev/sda2

# Create logical group using all VolGroupSystem space
$ lvcreate -l '100%FREE' VolGroupSystem -n lvolsystem

# Make ext4 filesystem on lvolsystem
$ mkfs.ext4 /dev/VolGroupSystem/lvolsystem


# Mount the root device, and then boot
$ mount /dev/VolGroupSystem/lvolsystem /mnt
$ mkdir /mnt/boot
$ mount /dev/sda1 /mnt/boot

# Install Arch
$ pacstrap -i /mnt base base-devel iw wpa_supplicant dialog refind-efi intel-ucode

# Create fstab
$ genfstab -U /mnt >> /mnt/etc/fstab

$ arch-chroot /mnt /bin/bash

$ sed -i 's/#\(en_US.UTF-8 UTF-8\)/\1/' /etc/locale.gen
$ sed -i 's/#\(en_US ISO-8859-1\)/\1/' /etc/locale.gen
$ locale-gen

$ ln -s /usr/share/zoneinfo/Europe/London /etc/localtime

# Set hardware clock to UTC (note: screws up windows a bit,
# there's a registry key to fix it though)
$ hwclock --systohc --utc

$ sed -i 's/block.*filesystems/block lvm2 filesystems/' /etc/mkinitcpio.conf
$ mkinitcpio -p linux

$ HOSTNAME="petal"
$ echo "$HOSTNAME" > /etc/hostname
$ sed -i "s/\(\(127.0.0.1\|::1\)\s\+localhost.localdomain\s\+localhost\)/\1\t${HOMENAME}/" /etc/hosts

$ passwd

$ useradd -D -Gadm,uucp,network,video,optical,floppy,storage,scanner,input,power,users will
$ passwd will

$ refind-install
$ refind-mkrlconf
# Edit the default boot line to have the following kernel parameters
# initrd=intel-ucode.img initrd=initramfs-linux.img quiet
$ vim /boot/refind_linux.conf
```

### Setup system to run salt

```
$ sudo pacman -S salt-zmq

# Setup salt to run in masterless minion mode
$ git clone git://github.com/willprice/devbox-arch ~/devbox-arch
$ sudo cp ~/devbox-arch/salt/minion /etc/salt/minion

# Use devbox-arch roots as salt roots
$ cd /srv
$ sudo ln -s ~/devbox-arch/salt/roots salt

# Run salt
$ salt-call --local state.apply
```
