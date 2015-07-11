# Install and manage a ltsp-pnp system (on ubuntu 14.04)

see https://wiki.ubuntuusers.de/LTSP/LTSP-PNP_mit_Fat_Clients for detailed (german!) instructions. 

## Network

This setup asumes that you have a standard home network: You have a router, which provides internet and and a DHCP service? That's fine.

The ltsp-pnp server and all clients can (and should) be in this network. Just plugin all into this network. 

You might want to configure your router to serve a static address for the ltsp-pnp-server. It's allways a good idea, when servers have fix IP addresses,

## Server

Any computer with bios can be used as server. It should have:

* An 1 gBit/s ethernet network interfce (nic)

* 4 to 16 GByte Ram. 8 Gbyte is good starting point.

* Fast Raid or even better SSD drives.

* It does not use a lot processer power. With less than ten clients a dual celeron is ok. An i3 processor is a good starting point.

### Server Setup 

* Install a common ubuntu 14.04 (i386 desktop-edition: ubuntu-14.0X.2-desktop-i386.iso . Don't worry: A standard 32-bit installlation manages any amount of memory!

* tip: configure now your router to  serve static IP addresses to this server.If done, be shure that the ltp-server got new new static address before proceeding.

* Install ltsp-pnp_1.0_all.deb (this deb!)

* run "sudo /opt/ltsp-pnp/bin/ltsp-pnp-install"


## Client

Any computer with bios can be used as client. It should have:

* An 1 gBit/s ethernet network interfce (nic). 100 MBit is ok. 

* 2 to 4 GByte Ram. 4 Gbyte is good starting point.

* The clients do not need any drives. If they have hard drives, just plug then out.

* It does not use a lot processer power. With less than ten clients a dual celeron is ok. An i3 processor is a good starting point.
 
### Client Setup

* Connect the client to the cabled network.

* Set in the bios of the client the boot device to PXE network boot. You enter the bios by pressing a function key during startup. Try F12 or F10, or google  for your type of client.

* Start the client. 

That's it. 


### Client Maintenance

All clients are exactly equal to the server: 

* To install any additional software on the clients: Install then on the server 

* To upgrade the clients: Upgrade the server

* Or, if you change IP address of server

To propagate all these changes to clients you must run: 

"sudo /opt/ltsp-pnp/bin/ltsp-pnp-update-image"

This command clones all server features to all clients. It takes some minits, and all client have, after a reboot, all new fetures.