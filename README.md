# Install and manage a ltsp-pnp system (on ubuntu 14.04)

see https://wiki.ubuntuusers.de/LTSP/LTSP-PNP_mit_Fat_Clients for detailed (german!) instructions. 

## Introduction

Vanilla LTSP is suited for small orgnizations with a few (maybe max. 20) Users with the about the same amount of clients. 

All clients have to be connected by a patchwork cable. It does not work over wifi. 

Puavo is build on top of LTSP and adds some important features:

* Puavo can handle laptops. These LTSP laptops also work over wlan or  even without an network connection.

* Puavo can easily handle tenthousend and more  users, desktops and laptops.

* The Puavo service provides all programms, updates and upgrades automaticly

* All Puavo clients on a patch cable can be transformed into a WiFi hotspot

* Puavo service also includes the ltsp-pnp server with all hardware and software support.

 

## Network

This setup asumes that you have a standard home network: You have a router, which provides internet and and a DHCP service? That's fine.

You might want to configure your router to serve a static address for the ltsp-pnp-server. It's allways a good idea, when servers have fix IP addresses.

Plug the ltsp-pnp server and all clients in a normal 1 GBit/s switch with enough ports for all your clients plus one extra port for the router.

Connect the switch with your router or a wall plug, which is connected with the router.



## Server

Any computer with can run Ubuntu can be used as server. It should have:

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

Any computer with can run Ubuntu can be used as client. It should have:

* An 1 gBit/s ethernet network interfce (nic). 100 MBit is ok. 

* 2 to 4 GByte Ram. 4 Gbyte is good starting point.

* The clients do not need any drives. If they have hard drives, just plug then out.

* It does not use a lot processer power. With less than ten clients a dual celeron is ok. An i3 processor is a good starting point.
 
### Client Setup

* Connect the client to the cabled network.

* Set in the bios of the client the boot device to PXE network boot. You enter the bios by pressing a function key during startup. Try F12 or F10, or google  for your type of client.

* Start the client. 

That's it. Start working with the client.


### Client Maintenance

All clients are exactly equal to the server: 

* To install any additional software on the clients: Install then on the server 

* To upgrade the clients: Upgrade the server

* Or, if you change IP address of the server

To propagate all these changes to clients you must run: 

"sudo /opt/ltsp-pnp/bin/ltsp-pnp-update-image"

This command clones all server features to all clients. It takes some minutes and all clients have, after a reboot, all new fetures.