#!/bin/bash
# configure.sh
# Mac Radigan

chkconfig sshd on
service sshd start

chkconfig tftp on
service tftp start

create-munge-key
chkconfig munge on

#service --add pbs_sched
#service --add pbs_mom
#service --add pbs_server
chkconfig pbs_sched on
chkconfig pbs_mom on
chkconfig pbs_server on
service pbs_sched start
service pbs_mom start
service pbs_server start

chkconfig activemq on
service activemq start

#service --add libvirtd
chkconfig libvirtd on
service libvirtd start

chkconfig memcached on
service memcached start

chkconfig monit on
monit -t
service monit start
monit start all

service xinetd reload

chkconfig mysqld on
service mysqld start

chkconfig slapd on
service slapd start

## *EOF*
