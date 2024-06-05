# Endpoint Central Test Lab Environment

This document outlines creating a sandbox environment focused on core Manage Engine products. Offering many opportunities for learning and IT skill development in a safe environment.

## Stage 1 - Gather And Setup Physical Equipment
- Router
    
- L2 Switch
  
- Domain Controller + File Server
  - Low - Med spec with a fair amount of storage space for network shares and backups
    
- Virtualization Server(s)
  - Med - High spec with a fair amount of RAM to run VMs

## Stage 2 - Low Level Configuration
- Router
  - Enable / configure DHCP and DNS
    
- Domain Controller
  - Install Windows Server 20xx > Enable domain controller and DNS > promote to domain controller
    
- File Server
  - Install Windows Server 20xx > Join domain > Install + Enable web management > Configure shares > Enable and configure basic mail server (required later)

- Virtualization Server(s)
  -  Install Windows Server 20xx > Join domain > Install + Enable web management > Enable Hyper-V > Configure virtual switch
 
## Stage 3 - Service Virtual Machine(s)
[Manage Engine Downloads](https://www.manageengine.com/download.html?pos=MEhome&loc=MainMenu&cat=MEheaderCTA)

- Endpoint Central VM - Windows 10
  - Join domain > Install Endpoint Central
    
- ADManager VM - Windows 10
  - Join domain > Install ADManager Plus
    
- Service Desk VM - Windows 10
  - Join domain > Install Service Desk Plus
 
- Self Service Portal
  - Join domain > Install Self Service Portal
 
## Stage 4 - Base Configuration
- Create lab users / admins

- Configure GPO auto install of Endpoint Central agent to machines that join the domain

- Create base Windows 10 VM or laptop to use for imaging
  - Join domain > install endpoint central agent > optional configuration and software install

- Endpoint Central
  - AD Sync enable Detect and Add New Computers (requires mail server)
  - Setup Image / Driver repositories - file server shares
  - Create bootable media from base Windows 10 machine - ISO,PXE,USB
  - Create deployment template
  - Create deployment tasks
 
- Endpoints
  - Create some VMs or physical machines to act as end user devices using the bootable media created earlier
  - Create some user accounts to go along with those machines

## Stage 5 - Playground Begins
At this point the basic functionality of Help Desk, some Desktop, and beyond is ready for configuring, testing, expanding, and most importantly, learning.

[Manage Engine Downloads](https://www.manageengine.com/download.html?pos=MEhome&loc=MainMenu&cat=MEheaderCTA)

- Suggestions for expanding:
  - Configure software and update/patch deployment to endpoints
  - Configure a more functional mail server
  - Deploy more Manage Engine offerings, like ADSelfService

## Stage 6 - Extra Curriculars
- Load Balancing and High Availability
  - Hyper-V Clustering requires 3+ servers with the same or similar hardware and 2+ network interfaces

- Endpoint security / SIEM

- Deploy and configure hardware firewall

- Deploy and configure IDS / IPS

- Configure VLANS for different aspects of the network

- Deploy and configure VPN

- L3 switch for advanced routing

## Notes
Domain Controller and file server can be run on virtualization server if needed.

File server and Virtualization servers do not require Windows server, they can be any type 1 Hypervisor or even NAS. Will require configuring mail server elsewhere though.

Manage Engine software does not have to be on separate machines, it can be together, or some combination.
