#!/bin/sh

DEB=$(find . -name "ltsp-pnp_1.0-1ubuntu*_all.deb")
echo $DEB
echo
echo "copying..."
scp $DEB root@archive.amxa.ch:/tmp/$DEB
echo "including..."
ssh root@archive.amxa.ch includedeb ubuntu trusty $DEB
echo "fertig"
