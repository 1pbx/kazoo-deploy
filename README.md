# kazoo-deploy


Kazoo deployment scripts

Scripts to deploy Kazoo components individually or as an all-in-one.

Meant to be used on fresh CentOS 7 installations with minimal install.

## How to use

1. Clone repo
2. Copy to approporiate directory
3. Run installer
```sh
git clone https://github.com/1pbx/kazoo-deploy
mkdir /opt/kazoo_install
cp kazoo-deploy/scripts/* /opt/kazoo_install
/opt/kazoo_install/install_kazoo
```

## Goals
- Create simple script to install all-in-one Kazoo on fresh install CentOS7 with both interactive install and auto-install with provided variables
- Longer term goal: Create config file based install.  This would allow auto-install with hostname, IP, and packages desired to be installed.
- Add hosts / IPs config file to auto create firewall script, and auto populate /etc/hosts with all hostnames / IPs of all instances in the cluster


### Maintained by [1pbx Solutions Inc](https://1pbx.io)

### Origin

Based on the old install scripts from https://github.com/2600hz/community-scripts specifically the simple-install within this repository https://github.com/2600hz/community-scripts/tree/master/simple-installer
