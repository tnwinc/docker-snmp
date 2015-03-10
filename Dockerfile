FROM ubuntu
RUN apt-get update; apt-get install snmpd -y
RUN apt-get install snmp -y
RUN apt-get install nano -y

#ADD snmpd.conf /etc/snmp/snmpd.conf
ADD bootstrap.sh /bootstrap.sh

EXPOSE 161:161/udp
EXPOSE 162:162/udp

ENTRYPOINT ["/bootstrap.sh"]
