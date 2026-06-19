# Umvirt VMexec

Utilities to interact with VMs via serial console and keyboard using Libvirt API.

Version: 0.3

License: GPL

## About

There are many ways to send commans to VM:

- It's possible to install servers to send commands to VMs over network via Telnet and SSH protocols. Port forwarding also can be used.
- It's possible to download scripts with commands (wget, curl) and pass them to interpreters (bash, python, perl, php).
- It's possible to redirect serial port to socket/pipe to send commands to VMs serial port via Telnet.

VMexec is utilities written on Python which connects to VM and send commands over serial port console and keyboard using libvirt interface.

## Features

- No installed servers in VM needed (Telnet, SSH)
- Single task tiny VMs like FreeDOS can be used
- Linux from Scratch friendly
- Scripting
- Timeouts

## Use cases

VMexec can be used for:

- CI/CD
- Automation
- Software installation when only serial port is available
- Education

## Installation

### Serial port and keyboard interaction

- Install modern GNU/Linux distribution on client machine
- Install libvirt package
- Install libvirt python3 bindings package
- Install virt-manager
- Copy 'vmexec' file in /usr/bin or other directory mentioned in $PATH environment variable

### Screenshot interaction

- [Python Pillow module](https://pypi.org/project/pillow) (to convert screenshots from PNM to PNG)
- [libsixel](https://github.com/saitoha/libsixel) with Python module (to render screenshots in terminal)
- KDE Konsole or other terminal with libsixel support (others can't render screenshots in terminal)

## Preparation

- Deploy VM
- Add serial port to console
- Open console on serial port
- Check that VM works and recieve commands over serial port console.

## Running

To send command to FreeDOS VM 'serialtest' on server 'qemu+ssh://root@192.168.1.1/system' without expecting reply run command like:

    vmexec --server="qemu+ssh://root@192.168.1.1/system" --vm=serialtest --command="cls"

You will get:

     > : sending "cls"


To send command  to FreeDOS VM 'serialtest' on server 'qemu+ssh://root@192.168.1.1/system'  with expecting reply run command like:

    vmexec --server="qemu+ssh://root@192.168.1.1/system" --vm=serialtest --command="echo 123" --expect="123"

You will get:

      > : sending "echo 123" and  waiting for expected response...
      i : "123" found!

More samples in '[samples](samples)' directory.

## Links

- [Libvirt](https://libvirt.org) - Virtualization API
- [Umvirt Linux from Scratch](https://umvirt.com/linux) - Linux from Scratch based GNU/Linux distribution with basic Libvirt support
- [Linux from Scratch](https://linuxfromscratch.com) - Books with GNU/Linux distribution build instructions
- [FreeDOS](https://freedos.org) - Simple and lightweight OS