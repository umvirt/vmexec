# Umvirt VMexec

Utility to send commands to VMs via serial consoles using Libvirt API.

## Samples

### Basic

Basic samples shows an interaction with VM with serial console interface

#### Preparation

- deploy [FreeDOS](https://freedos.org) VM with serial console 
  called "serialtest" for example. To acivate serial console in VM run:

        ctty com1

- make this VM server available by libvirt URI like "qemu+ssh://root@192.168.1.1/system"
- install vmexec or make it available
- copy config file 'config.sh' from template 'config.sh.sample'
- edit config file 'config.sh'
- close VM session by clossing VM window

#### Running

Just execute proper executable.

Available samples:

- **noalias.sh** - basic scripting without alias
- **withalias.sh** - scripting with alias
- **success.sh** - executing additional command
- **hang.sh** - hanging script sample (no expected reply). Use Ctrl+C to exit.
- **timeout.sh** - running 'hang.sh' with timeout

### Keyboard

Keyboard samples shows an interaction with VM with keyboard

#### Preparation

- deploy FreeDOS machine with command shell called "freedos"
- make this VM server available by libvirt URI like "qemu+ssh://root@192.168.1.1/system"
- install vmexec or make it available
- copy config file 'config.sh' from template 'config.sh.sample'
- edit config file 'config.sh'
- close VM session by clossing VM window

#### Runing

- cad.sh - send Ctrl-Alt-Delete
- enter.sh - send Enter
- keystest.sh - send various keys without delay
- keystestrightshiftdelay.sh - send various keys with delay and using right shift for upper case
- switch.sh - console switching:
   - open serial console with keyboard
   - run command in serial console
   - switch back to keyboard


