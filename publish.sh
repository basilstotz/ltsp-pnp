#!/bin/sh

DEB=$1

scp $1 root@archive.amxa.ch:/tmp/$1
ssh root@archive.amxa.ch includedeb ubuntu trusty $1
