# Install and manage a ltsp-pnp system (on ubuntu 14.04)

see https://wiki.ubuntuusers.de/LTSP/LTSP-PNP_mit_Fat_Clients for detailed (german!) instructions. 

## Network Setup

This setup asumes that you have a standard home network: You have a router, which provides internet and and a DHCP service? That's fine.

The ltsp-pnp server and all clients can (and should) be in this network. Just plugin all into this network. 


## Installation of the ltsp-pnp Server 

* Install a common ubuntu 14.04 (i386 desktop-edition: ubuntu-14.0X.2-desktop-i386.iso . Don't worry: A standard 32-bit installlation manages any amount of memory!

* Install ltsp-pnp_1.0_all.deb (this deb!)

* run "sudo /opt/ltsp-pnp/bin/ltsp-pnp-install"
 

##Maintenance

* Install any additional software you like to have on the clients 

* Upgrade installation on server

* Change IP address of server 


run "sudo /opt/ltsp-pnp/bin/ltsp-pnp-update-image"

That's it!