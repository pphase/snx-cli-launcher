# snx-cli-launcher
# Description
Simple script with menu to connect/re-connect/disconnect to/from Endpoint VPN.

# Restrictions
Scipt was tested and can be run on Ubuntu 24.04.4 LTS with installed snx from snx_install_linux30.sh file whcih can be downloaded from Endpoint VPN server if Web Access is enabled.

# Installation
In order to use this script first all snx dependencies has te be installed:
```
$ sudo apt-get install libstdc++5:i386 libx11-6:i386 libpam0g:i386
```
Next install snx from script available within your Endpoint VPN management server:
```
$ ./snx_install_linux30.sh
```
After that you need to edit snx-cli-lanucher script to provide your username. Within snx-cli-launcher.sh file find line:
```
sudo snx -s $SERVER_ADDRESS -u $USERNAME # Command to be executed.
```
And change $SERVER_ADDRESS to your in format xxx.xxx.xxx.xxx or preferable DNS name, as well as change $USERNAME to yours as it was provided within Endpoint configuration.
<br><br>
Save file and make it executable:
```
$ sudo chmod +x snx-cli-launcher.sh
```
# Launching
You can launch it directly from terminal:
```
$ ./snx-cli-launcher.sh
```
Which will give you three options:
```
=============================
= DO NOT CLOSE THIS WINDOW! =
=============================
 
Menu
1 - Connect/Reconnect to Mobik VPN
2 - Disconnect from Mobik VPN
3 - Quit
```
Becasue snx require sudo to run, when choosing option "1" it will ask for your password and then it will ask for your VPN password.
<br><br>
Script can be added to bash profile to be run after every logon or just used directly from terminal
# License
Script is free and can be used/modified by anyone.
