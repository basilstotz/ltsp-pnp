# Install and manage a ltsp-pnp system (on ubuntu 14.04)

see https://wiki.ubuntuusers.de/LTSP/LTSP-PNP_mit_Fat_Clients for detailed (german!) instructions. 

## Installation of the ltsp-pnp server 

* Install a common ubuntu 14.04 (desktop-edition). If you have any 32-bit clients must use a 32-bit server installation! 

* Install ltsp-pnp_1.0_all.deb (this deb!)

* Install any additional software you like to have on the clients 

* run "sudo /opt/ltsp-pnp/bin/ltsp-pnp-install"

##Maintenance

* Upgrade/modify installation on server

* run "sudo /opt/ltsp-pnp/bin/ltsp-pnp-update-image"
