# Introduction

This document outlines my setup of an open source [Personal Knowledge Management](https://en.wikipedia.org/wiki/Personal_knowledge_management) / note taking tool called [Silverbullet](https://github.com/silverbulletmd/silverbullet). In a secure and highly available manner. My ISP blocks 80/443/445 traffic so this gets around those limitations as well. Parts of this document are intentionally kept vague for security. Some configuration will require temporarily opening up security restrictions.

I am not associated with and have not yet contributed to [Silverbullet](https://github.com/silverbulletmd/silverbullet).

## Planning
- Local server(s)
- Cloud VM(s)
- Web Domain / DNS
- Reverse Proxy
- Load Balancer
- Firewalls

## Virtual Machine Setup
- Ubuntu Server - Any LTS 18.04 or newer should be fine.
- Updates and configure any necessary extras for the environment.
- Install Docker - Optionally install a docker manager. IE Portainer or Yacht.
- Choose a directory for Silverbullet data and notes to be stored.
- Spin up Silverbullet container using your preferred method.
  - Login credentials, directory, and port number must be included.
- Confirm Silverbullet is running on the port specified and verify your login credentials are working.
- Install Syncthing or spin up Syncthing Docker container.

## Expanding
- Repeat Virtual Machine Setup for any additional local or cloud instances.
- Confirm all Silverbullet and Syncthing instances are working.
- Assign static IP to VMs where possible or configure network as needed.
- Take note of all relevant IP addresses.

## Reverse Proxy / Load Balancer
- Cloud platform provided options or installed on cloud VM.
- Only forward requests made to FQDN.
- Forward to Silverbullet VMs on ports specified in docker.
- Valid TLS certificate from CA.
- Redirect all HTTP requests to HTTPS.
- Persistence to stay connected to the same instance for that session.

## Firewall Configuration
- Reverse Proxy / Load Balancer
  - Restrict access to only allow 80/443 requests coming from CloudFlare IPs.
- Virtual Machines 
  - Allow Syncthing ports.
  - Only allow incoming HTTPS requests coming from the Load Balancer IP.
  - For local instances forward respective port to local IP of instance running on that port.

## CloudFlare Configuration
- Domain and A name pointing to Reverse Proxy / Load Balancer.
- Full (strict) TLS for end-to-end encryption.
  - Requires valid certificate from CA.
- WAF to restrict access.

## Syncthing
- Create username and password for web UI.
- Setup Silverbullet directory.
  - File versioning and retention
  - Ignore rules
  - Connect Syncthing instances to each other
- Silverbullet automatically detects changes and refreshes the page if you happen to load things up in two places at once.

## Backups
- Install Separate Syncthing instance storing to a secure location.
  - Ideally local redundancy
  - Sync to additional cloud or off site location(s) with additional versioning.

## Result / Bonus 
- Since [Silverbullet](https://github.com/silverbulletmd/silverbullet) is Markdown based you can also use other popular PKMs such as [Obsidian](https://obsidian.md/) or any other Markdown application. 
- As noted in the introduction, this setup also gets around the issue of some ISPs blocking web and other traffic on residential connections. It does this via the use of the reverse proxy passing to your IP on an allowed port.
- **Potential use case:** Obsidian is great but requires a client and paid service for syncing. This setup allows you to use Obsidian where you have it installed and sync without the paid service. Then your notes are accessible from any browser as well not requiring any client. Note your access restrictions here.

## Notes
- Markdown is just a .txt file so in a worst case scenario you can open the raw files just about anywhere.
- This setup is intentionally not using any clustering or orchestration such as Docker Swarm or Kubernetes. It could easily be implemented in either with the same result.
- You could run a single instance and be completely fine. I have not yet seen Silverbullet break without me directly causing it.

## Diagram
![SilverBulletDiagram](https://github.com/Dzzs/Markdown-Notes/assets/11656216/43a8949f-7b08-4b14-88c4-e053ae8a2c6a)
