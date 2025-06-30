# Secure Sandbox / Virtual Desktop Infrastructure

This document outlines my secure sandbox / Virtual Desktop Infrastructure setup. This is achieved primarily through a combination of Docker in Docker, Kasm, and custom scripts. Useful for safely investigating suspicious webpages and files. Key features and high level overview diagram below. 

---

Key features:
- Cloudflare proxy and WAF rules ensuring only trusted secure connections to the sandbox.
- Reverse proxy to obscure sandbox ingress IP.
- Nested hypervisor within secure isolated VLAN.
- Headless ubuntu VM for Docker and Kasm.
- Multiple full OS ephemeral virtual machines. Only accessible from within secure VLAN.
- Any flavor of Linux, any browser, as well as many other applications within ephemeral Docker in Docker containers.
- All traffic from within the sandbox goes through a secure VPN with exit nodes around the globe.
- Custom scripts for reverting VMs to clean state after each use.
- Entire sandbox restores to a clean state each day.

---

![image](https://github.com/user-attachments/assets/861a9509-227e-4cd7-9457-e71e698a9eca)
