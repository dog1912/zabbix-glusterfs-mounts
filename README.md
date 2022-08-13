# Zabbix monitoring of glusterfs mounts defined in /etc/fstab

This project is composed by shell script, a Zabbix template and a zabbix-agent configuration file:
- The script discover_glusterfs.sh checks for mount points defined in /etc/fstab with `glusterfs` type
- The template has discovery items that read those values and activates triggers.
This repository was created using Zabbix 5.0.17 and several GNU/Linux Ubuntu 20.04.4 LTS servers. It may work on previous zabbix versions, but I couldn't test it.


### Installation

1. Download the necessary files or clone this project anywhere zabbix user can access.

2. Put `zabbix-agentd.d/userparameter_glusterfs.conf` in zabbix agent directory, normally `/etc/zabbix/zabbix-agentd.d/`. Edit this file if you don't use the default `/var/lib/zabbix` folder for shell scripts.

3. Put `discover_glusterfs.sh  in `/var/lib/zabbix` folder (or the one you defined in the previous file).

4. Now restart the Zabbix agent service.

5. Import `template/zbx_export_templates.xml` in Zabbix and assign it to your desired hosts.

### Feedback

Feel free to send bug reports and feature requests. If you are using this solution in production, please tell me to know it's being useful.
