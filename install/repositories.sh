#!/bin/sh
## Mac Radigan

# cd /etc/yum.repos.d/

## required for RPM Forge
wget http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm
rpm --import http://apt.sw.be/RPM-GPG-KEY.dag.txt
rpm -K rpmforge-release-0.5.2-2.el6.rf.*.rpm
rpm -i rpmforge-release-0.5.2-2.el6.rf.*.rpm

## audio
wget http://pkgrepo.linuxtech.net/el6/release/linuxtech.repo

## required for Maven 2
cat > /etc/yum.repos.d/jpackage-generic-free.repo << EOF
[jpackage-generic-free]
name=JPackage generic free
baseurl=http://mirrors.dotsrc.org/jpackage/6.0/generic/free/
enabled=1
gpgcheck=1
gpgkey=http://www.jpackage.org/jpackage.asc
EOF
cat > /etc/yum.repos.d/jpackage-generic-devel.repo << EOF
[jpackage-generic-devel]
name=JPackage Generic Developer
baseurl=http://mirrors.dotsrc.org/jpackage/6.0/generic/devel/
enabled=1
gpgcheck=1
gpgkey=http://www.jpackage.org/jpackage.asc
EOF

## required for ActiveMQ
cat > /etc/yum.repos.d/mnxsolutions.repo << EOF
[MNXSolutions]
name=MNX Solutions Repository
baseurl=http://yum.mnxsolutions.com/
enabled=1
gpgcheck=0
EOF

# Kraxel
(cd /etc/yum.repos.d/; wget https://www.kraxel.org/repos/firmware.repo)

## *EOF*
