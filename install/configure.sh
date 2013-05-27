#!/bin/bash
# configure.sh
# Mac Radigan

chkconfig sshd on
service sshd start

chkconfig tftp on
service tftp start

service xinetd reload

## *EOF*
