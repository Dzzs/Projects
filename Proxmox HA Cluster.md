# Proxmox Virtual Environment High Availability

This document outlines enabling basic a High Availability cluster and creating a Highly Available VM in Proxmox VE. Further configuration based on specific needs will be required.

- Install Proxmox VE on the nodes intended for clustering.
  - Static IP or DHCP reservation highly recommended.
  - Ensure that you can access the web interfaces of all the nodes.
    
- On any node, navigate to Datacenter > Cluster > Create Cluster.
  - The default options are suitable, but make any necessary modifications.
  - After creating the cluster, click on Join Information > Copy Information.

- On the node you wish to add to the cluster, go to Datacenter > Cluster > Join Cluster and paste the copied information.
  - Provide the password for the node that created the cluster.
  - Both nodes should now appear under the Datacenter section.
  - Repeat for all nodes you want to add to the cluster.

- Once all the nodes are joined to the cluster, you can manage them from any node's web interface.
  - Datacenter > Storage > Add.
    - Ensure that shared storage is configured beforehand (e.g., NAS/SAN or other shared storage solutions).
    - Ideally, use SSDs and fastest possible network connections.
  - Select the appropriate option based on your shared storage setup.
  - Provide a name and the necessary information to connect to your shared storage.
  - Your newly added shared storage should now be visible under each node in the cluster.

- Create the VM that you want to make Highly Available.
  - Follow the standard VM creation process, but select your shared storage as the VM's storage device.
  - You can complete the installation and setup of the VM at this stage or postpone it for later.

- Once your VM is created using shared storage, it will be initially hosted on the node where it was created.
  - Datacenter > Expand HA > Groups > Create.
  - Create a group of nodes that will be responsible for running this VM.
  - Datacenter > HA > Add and assign your VM to the created group.

- Your VM is now configured for High Availability. In the event that the node running the VM experiences downtime or loses connection, the cluster will automatically migrate the VM to the next available node in the group, based on the specified priority.

- Keep in mind the specific requirements and characteristics of your workload to ensure it is suitable for this type of High Availability.
