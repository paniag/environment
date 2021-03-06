#!/bin/bash
## torque-configure.sh
## Mac Radigan

echo `uname -n` > /var/spool/torque/server_name

qmgr -c "set server scheduling=true"
qmgr -c "create queue batch queue_type=execution"
qmgr -c "set queue batch started=true"
qmgr -c "set queue batch enabled=true"
qmgr -c "set queue batch resources_default.nodes=1"
qmgr -c "set queue batch resources_default.walltime=3600"
qmgr -c "set server default_queue=batch"

qmgr -c 'p s'

## *EOF*
