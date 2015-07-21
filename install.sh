#!/bin/sh

add-apt-repository --yes ppa:ts.sch.gr
apt-get --yes update
apt-get --yes install gdebi
gdebi ltsp-pnp_1.0_all.deb
