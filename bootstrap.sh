#!/bin/bash

echo $@

echo "###automatically generated###" > /etc/snmp/snmpd.conf
for e in `env | grep SNMPD`
do
	echo $e | sed 's/SNMPD_//g' | sed 0,/\=/{s/\=/\ /} >> /etc/snmp/snmpd.conf
done

/usr/sbin/snmpd -f $@

