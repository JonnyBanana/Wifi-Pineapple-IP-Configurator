# Pineapple-IP-Configurator

<h3>A Windows Utility to Help to Setup Network for Wifi Pineapple Devices</h3>


<BR>

![Alt text](https://raw.githubusercontent.com/JonnyBanana/Pineapple-IP-Configurator/master/IMG/FondOrnateHellbender-small.gif)

<BR>


<h4>What does the program do?</h4>

In my experience I had to set up my Wifi Pineapple many times, sometimes due to the need to install it on different devices,
others because the network parameters were mysteriously forgotten by Windows, and it also happened to me simply by 
disconnecting the Wifi Pineapple from the USB port.
Every time you have to enter the IPv4 network parameters and reset the correct address,  and in the long run it can become frustrating ...

Hence the need to write a simple program that did these simple maneuvers automatically.

The program is written in DOS for backward compatibility with Windows systems.

<BR>
 
![Alt text](https://raw.githubusercontent.com/JonnyBanana/Pineapple-IP-Configurator/master/IMG/pineapple-menu.PNG)
  
<BR>
  
Essentially the program has only 4 functions:

1. DISABLE DHCP: this function removes the dhcp from the Wifi Pineapple network (which must be named "WIFI_PINEAPPLE"), and
set as p IP address 172.16.42.42 and as Subnet Mask 255.255.0.0, thus allowing correct network operation for the Pineapple AP

2. RE ENABLE DHCP: this function resets the dhcp from the Wifi Pineapple network (which must be named "WIFI_PINEAPPLE"), 
it is useful when you have network problems, for troubleshooting

3. RENAME THE NETWORK: this function renames the network of the device in "WIFI_PINEAPPLE"), it is used to make the program functions "1" and "2" work.


<BR>

<h4>Requirements</h4>

The Network MUST be named "WIFI_PINEAPPLE" (u can use the function "3" of this utility)
