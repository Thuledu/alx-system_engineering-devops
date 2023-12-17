Command line for the win

Background Context
CMD CHALLENGE is a pretty cool game challenging you on Bash skills. 
Everything is done via the command line and the questions are becoming increasingly complicated. 
It’s a good training to improve your command line skills!

Here are the steps to follow:

Take the screenshots of the completed levels as mentioned in the general requirements.
Open a terminal or command prompt on your local machine.
Use the SFTP command-line tool to establish a connection to the sandbox environment. You will need the hostname, username, and password provided to you for the sandbox environment.
Once connected, navigate to the directory where you want to upload the screenshots.
Use the SFTP put command to upload the screenshots from your local machine to the sandbox environment.
Confirm that the screenshots have been successfully transferred by checking the sandbox directory.
Once the screenshots are transferred, you can proceed to push the screenshots to GitHub as mentioned in the initial requirements.

Upload Files
Using the 'put' command, you can upload a file to the remote directory.
sftp> put localfile_example.txt

Check Present Working Directory
lpwd - Print the current directory on your system
pwd - Print the current directory on the remote server

Listing Files
lls - Local files
ls - remote files

Change directory
Switching from one directory to another directory in local and remote locations for file operations.
cd - Change remote directory
lcd - Change local directory

Removing files
sftp> rm filename.png
