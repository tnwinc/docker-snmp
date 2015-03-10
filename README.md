# SNMPD in docker

This is snmpd in a docker container with snmpd running in the foregroud based on Ubuntu and allows you to pass in command line parameters for snmpd. It's inspired by polinux/snmpd.

Command line parameters passed in from docker run will be passed automatically to snmpd, so that `docker run [run args] tnwinc/snmp -c /path/to/file` will run `/usr/sbin/snmpd -f -c /path/to/file`.

It is also possible to pass in directives for the snmpd.conf as environment variables. Variables must begin with SNMPD_ and will be added to an automatically generated /etc/snmp/snmpd.conf. For exmaple `docker run [run args] -e SNMPD_rocommunity=public tnwinc/snmp` will generate /etc/snmp/snmpd.conf containing `rocommunity public`. 
