# Umvirt VMexec

Utility to send commands to VMs via serial consoles using Libvirt API.

## Samples

### Preparation

- deploy [FreeDOS](https://freedos.org) VM with serial console. To acivate serial console run:

        ctty com1

- make this VM server available by libvirt URI like "qemu+ssh://root@192.168.1.1/system"
- install vmexec or make it available
- copy config file 'config.sh' from template 'config.sh.sample'
- edit config file 'config.sh'

### Running

Just execute proper executable.

Available samples:

- **noalias.sh** - basic scripting without alias
- **withalias.sh** - scripting with alias
- **success.sh** - executing additional command
- **hang.sh** - hanging script sample (no expected reply). Use Ctrl+C to exit.
- **timeout.sh** - running 'hang.sh' with timeout