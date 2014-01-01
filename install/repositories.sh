#!/bin/sh
## Mac Radigan

## required for RPM Forge
wget http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm
rpm --import http://apt.sw.be/RPM-GPG-KEY.dag.txt
rpm -K rpmforge-release-0.5.2-2.el6.rf.*.rpm
rpm -i rpmforge-release-0.5.2-2.el6.rf.*.rpm

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

## *EOF*
