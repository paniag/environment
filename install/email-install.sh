#!/bin/bash
## email-install.sh
## Mac Radigan

dir=~/.certs
mkdir $dir
certutil -N -d $dir

## gmail
echo -n | openssl s_client -connect smtp.gmail.com:465 | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > $dir/GMAILCERT
certutil -A -n "Google Internet Authority" -t "C,," -d certs -i $dir/GMAILCERT 
certutil -L -d certs

## *EOF*
