# Trilium Notes Setup

Upgraded note taking / knowledge base platform self hosted on my infrastructure. I am not affiliated with Trilium in any way but I would strongly recommend the project to anyone looking for a robust note / knowledge base application. [Trilium Notes.](https://github.com/TriliumNext/Trilium) Below is a rough overview and diagram of my setup. Some details are intentionally omitted or left vague for security purposes.

---

## Overview 
- On premises servers
- Cloud VMs
- Web Domain / DNS
- Reverse Proxy
- Web Application Firewall with strict access controls and rate limits from untrusted sources
- Multiple live clone instances for resiliency if primary instance is unreachable
- Many forms of redundant backups to ensure restoration to a recent state is always possible

---

![image](https://github.com/user-attachments/assets/f798fd19-2afb-41d7-abc1-ba40aededb40)
