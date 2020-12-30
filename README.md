# LGHUB_Sync
Synchronize Logitech G Hub Settings across devices (PC/Laptop)

--------------------------------

Disclaimer: 

This is the first project that I upload to Github publicly and I'm fairly knew to programming in Batch and Bash files, so please forgive any mistakes or bugs that you find. Hope this helps out at least someone else!

You're free to use this as you please as long as you don't charge for it and give proper credits!!! (Although I can't fathom anyone who would pay/charge for this, but just in case XD)

- Ansel Anselmi.

--------------------------------

Description:

I've been frustrated for a while with the fact that you can't have your Logitech G Hub settings saved to your user account on the cloud, I've lost some off my settings on my PC a couple times after making changes to the settings on my laptop and then moving the settings file over to my PC, the more changes I make the more frustrating it gets to keep it all in "sync", hence why I created this project, at least until Logitech adds the cloud functionally.

I've made a couple of scripts that I can run using the G keys on my Logitech Keyboard, however you can still run these scripts manually or automate them using the task scheduler, it's up to you. I prefer using the Macros for simplicity and I'm too lazy to create any automated task with the scheduler.

--------------------------------

Requirements:

1.- Have Logitech G Hub installed.

2.- Have Google Drive installed. (This could be used with OneDrive or any other form of cloud drive that you can have direct access to from a terminal, but it would require modifying the Source and Destination paths in the scripts).

---------------------------------

Instructions for Windows (have not tired this on linux):

1.- You need to install a linux distribution in order to use the bash scrips in this project, instructions for this can be found online.

2.- Once you're able to run a linux bash shell in windows you'll need to install rsync, again instructions for this can be found online.

3.- Once you have rsync installed you need to copy the contents of the 'Local Disc C' folder to your Local Disk (C), the folder structure should look like this:

	- C:\Scripts\LGHUB
		- runSyncDownload.bat
		- runSyncUpload.bat

4.- You also need to copy the contents of the 'Google Drive' folder to your Google Drive folder (replace %USERNAME% with your username folder):

	- C:\Users\%USERNAME%\Google Drive\LGHUB
		- Backup
		- Logs
		- Scripts
			- SyncDownload.bash
			- SyncUpload.bash
		
(I'd actually like to place all scripts in a Google Drive folder, however in order to use these scrips with Macros I'd have to have 2 different scripts for each device I want to synchronize and it becomes tedious to maintain, so I can just have the same 2 scripts on both devices in the Local Disk C and I have no issues, I guess you could also make the scripts sync themselves but that's for a future version if I ever do one).

5.- Done!!! Once the files are in place all that's left to do is run 'runSyncUpload.bat' and 'runSyncDownload.bat' in 'C:\Scripts\LGHUB' to upload to google drive or download to your device respectively, you don't need to ever run the other 2 .bash files as the .bat files will call them. 

You can also set up some Macros or System Actions in Logitech G Hub if you have G-Keys on your Keyboard or Mouse, instructions on how to run applications with G Hub Macros and System Actions can be found online. Otherwise, you can just run them manually or create a scheduled task to run them automatically. 

P.S. The 'runSyncDownload.bat' script will automatically close and reopen the Logitech G Hub application, it needs to do this in order to update the settings file as it would otherwise be in use by the application and fail to sync.




- Ansel Anselmi.

