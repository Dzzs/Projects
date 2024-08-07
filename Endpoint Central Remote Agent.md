# Manually Install Endpoint Central Remote Agent

  Ensure you have PsExec and EndPoint agent folder available.

1. Get the local IP address of the machine. 


2. Open an elevated administrator command prompt.
	- Enter the command below replacing x with the machine's IP. 

	- ```psexec \\xx.xx.xx.xx cmd```

		<img width="264" alt="Screenshot 2024-08-07 at 2 35 23 PM" src="https://github.com/user-attachments/assets/0780c321-7c12-49fc-be7c-232a0d7508b9">


	- If you see the above output you are now executing commands on the remote machine.
	
 	- Type “hostname” and hit enter. Confirm the output matches the PC name you are expecting.


3. Uninstall any existing agent by entering the following command.

	- ```msiexec /X{6AD2231F-FF48-4D59-AC26-405AFAE23DB7} /q```

		<img width="582" alt="Screenshot 2024-08-07 at 2 35 38 PM" src="https://github.com/user-attachments/assets/0cb70654-5a95-4595-95a7-33ddbb0415e6">
		
	- Enter the command then leave the command prompt open and continue to step 4.


4. On your computer map a network drive. Enter the machine's IP as the path \\xx.xx.xx.xx\c$ Check Connect using different credentials and enter your admin credentials when prompted.  

	<img width="599" alt="Screenshot 2024-08-07 at 2 28 01 PM" src="https://github.com/user-attachments/assets/63885ab0-9e32-48cf-b96a-c4685bf88490">


	- You will be mapped to the C drive of the remote machine. Open or create Temp folder on the C drive.

	- Copy the Endpoint folder from your computer C:\Remoting into the machine's Temp folder.

Note: Do not try to skip ahead or interact with the command prompt while the file is transferring. PsExec uses the same protocol as the file transfer so it will be very slow, if it works at all, until the transfer is complete.


5. Confirm any existing agent is uninstalled.
	- Enter the following command again.

	- ```msiexec /X{6AD2231F-FF48-4D59-AC26-405AFAE23DB7} /q```

		<img width="582" alt="Screenshot 2024-08-07 at 2 35 38 PM" src="https://github.com/user-attachments/assets/3799f1c0-e1b4-450d-a870-4c8cf64b66f4">


	- If the uninstall is still in progress you will see this message.

		<img width="623" alt="Screenshot 2024-08-07 at 2 35 54 PM" src="https://github.com/user-attachments/assets/38c48bff-a8d0-48a7-87e1-b86a734844c4">

	- Give it another 30+ seconds then repeat until you see the message below indicating no agent is currently installed.

		<img width="614" alt="Screenshot 2024-08-07 at 2 36 09 PM" src="https://github.com/user-attachments/assets/ccbef1d8-3a39-4461-b709-0693dc549e13">

	- If you are still not receiving the message indicating no agent is installed after about 5 minutes disconnect from the machine by typing “exit” or closing your command prompt. Then restart the machine.

	- Once the computer is back up run “psexec \\xx.xx.xx.xx cmd” again to reconnect, then repeat this step 5 from the beginning.


6. Once any existing agent is uninstalled type the following command to move into the NewEndpoint folder.

	- ```cd \Temp\NewEndpoint```

		<img width="372" alt="Screenshot 2024-08-07 at 2 36 26 PM" src="https://github.com/user-attachments/assets/59dd56b2-85fd-4a3d-bb87-82f26286f059">

	- Once in the Endpoint folder type “setup” 

		<img width="427" alt="Screenshot 2024-08-07 at 2 36 39 PM" src="https://github.com/user-attachments/assets/e3427193-8de8-4f38-aa0a-4e40e6bad798">

	- Enter 1 to install the agent. You should receive a message that the install was successful.

		<img width="445" alt="Screenshot 2024-08-07 at 2 36 50 PM" src="https://github.com/user-attachments/assets/5ce55ea4-c80e-4b87-a6a4-6d9d259c9485">

	- Give the agent a minute to get up and running, the Endpoint agent should now be up and running on the machine. If this fails go back and redo steps 5 and 6.


7. Disconnect from the machine either by typing “exit” or closing your command prompt, and disconnect the mapped drive.

