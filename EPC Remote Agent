# Manually Install Endpoint Central Remote Agent

  Ensure you have PsExec and EndPoint folder available.

1. Get the local IP address of the machine. 


2. Open an elevated administrator command prompt.
- Enter the command below replacing x with the machine's IP. 

- ```psexec \\xx.xx.xx.xx cmd```

- If you see the above output you are now executing commands on the remote machine.

- Type “hostname” and hit enter. Confirm the output matches the PC name you are expecting.


3. Uninstall any existing agent by entering the following command.

- ```msiexec /X{6AD2231F-FF48-4D59-AC26-405AFAE23DB7} /q```

- Enter the command then leave the command prompt open and continue to step 4.


4. On your computer map a network drive. Enter the machine's IP as the path \\xx.xx.xx.xx\c$ Check Connect using different credentials and enter your admin credentials when prompted.  

- You will be mapped to the C drive of the remote machine. Open or create Temp folder on the C drive.

- Copy the Endpoint folder from your computer C:\Remoting into the machine's Temp folder.

Note: Do not try to skip ahead or interact with the command prompt while the file is transferring. PsExec uses the same protocol as the file transfer so it will be very slow, if it works at all, until the transfer is complete.


5. Confirm any existing agent is uninstalled.
- Enter the following command again.

- ```msiexec /X{6AD2231F-FF48-4D59-AC26-405AFAE23DB7} /q```

- If the uninstall is still in progress you will see this message. 

- Give it another 30+ seconds then repeat until you see the message below indicating no agent is currently installed.

- If you are still not receiving the message indicating no agent is installed after about 5 minutes disconnect from the machine by typing “exit” or closing your command prompt. Then restart the machine.

- Once the computer is back up run “psexec \\xx.xx.xx.xx cmd” again to reconnect, then repeat this step 5 from the beginning.


6. Once any existing agent is uninstalled type the following command to move into the NewEndpoint folder.

- ```cd \Temp\NewEndpoint```

- Once in the Endpoint folder type “setup” 

- Enter 1 to install the agent. You should receive a message that the install was successful.

- Give the agent a minute to get up and running, the Endpoint agent should now be up and running on the machine. If this fails go back and redo steps 5 and 6.


7. Disconnect from the machine either by typing “exit” or closing your command prompt, and disconnect the mapped drive.

