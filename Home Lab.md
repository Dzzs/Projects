# Hardware

### Machines

- “Tower” -  Intel 5820k, 32GB RAM, 2.5G NIC, 1GB NIC x4, 19TB Storage

- “Monolith” - Intel 13700k, 128GB RAM, 2.5G NIC, 3TB M.2 Storage, 3060TI GPU

- “Blade” - Intel Xeon 2667V3 x2, 96GB RAM, 1G NIC x4, IPMI, 2TB Storage

- “Cube” - Synology NAS 12TB x4, 1 drive parity

- “Pi4” - Raspberry Pi 4 4GB, 32GB Storage

- “Pi4b” - Raspberry Pi 4 4GB, 32GB Storage

- “Pi5” - Raspberry Pi 5 8GB, 1TB NVME SSD Hat storage

- “Razer Laptop” - Intel 1065G7, 16GB RAM, 1650TI GPU, 500GB Storage, WiFI, 2.5G USB NIC

- “MacBook M3” - M3 Apple Silicon, 16GB RAM, WiFi, 500GB Storage

- "My-PC" - Intel 10900k, 32GB RAM, 2.5TB SSD Storage, RTX 3080 GPU

## Networking

### Switching

- Cisco 3850 - 48 Port PoE, 1G x 36, 10G x12, 10G SFP x4 

- Aruba S2500 48 Port PiE 1G x48, 10G SFP x4

### Routing

- Netgear R7000 with 3rd party firmware for full control

- Router handles DHCP and tertiary DNS

- Pi4 and Pi4b handle primary and secondary DNS

- ISP Modem put in bridge mode with all features disabled

### Wireless Access Points (WAPs)

- Netgear AX1800 WiFi 6 Multi Gig PoE x2 - Managed locally

# Software

### Hypervisors

- ProxMox
- UnRaid

### NAS

- Synology DSM
- UnRaid

### Virtual Machine Opperating Systems

- Ubuntu Server 18.04 LTS
- Ubuntu Server 20.04 LTS
- Ubuntu Server 22.04 LTS
- Ubuntu Server 24.04 LTS
- Debian 12 Server
- Kali Linux
- Windows Server 2022 - Domain Controller
- Windows 10
- Windows 11

## Monitoring / Security

### Zabbix

- Systems usage and health dashboard
- Automated issue remediation restarting services
- Notifications of issues and resolution status
    
### Security Onion

- Monitoring all network traffic in real time
- Agents on systems collecting logs for real time monitoring
- Log receiving endpoint for log collection without agent

## Docker

### Containers

- Management - Portainer
- Switch Management - 3850WebConfig
- Youtube Frontend - Invidious
- Notes app - Silverbullet
- Recipe book - Mealie
- Self hosted LLM - OpenAI
- Ansible GUI - Semaphore
- 3D Model Viewer - Manyfold3D
- Monitor Websites - ChangeDetection
- Live transcoding - Go2RTC
- Camera to RSTP - Wyze-bridge
- Homepage - Homarr
- “Aridrop” between any devices - Pairdrop
- DNS / Ad blocking - PiHole x2 
- PDF Tool - Stirling PDF
- VDI - Kasm
- Secondary Notes - Obsidian VNC
- “Live” TV from Plex library - Disquetv
- NVR - Viserson
- File Syncing - Syncthing
- Drawing app - Excalidraw
- Spotify Stats - Your Spotify 
- Quick reading - Leto
- Distributed Transcoding - Tdarr
- Streaming - Plex
- Media requester - Overseer
- Request from watchlist - Watchlistarr
- TV shows - Sonarr
- Movies - Radarr
- Indexers - Prowlarr

## Temperature Management

- Window AC
- Designed and 3D printed shrouds with fans to capture exhaust heat from equipment
- Designed and 3D printed duct manifold to combine ducts at window exhaust point
- Ducts carry heat from shrouds to window manifold
