Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-12-30T10:47:53+08:00

====== Ethtool ======
Created Tuesday 30 December 2014

**ethtool dev** : show base settings
- -k dev   show features
- -K dev feature on|off
- -S stattistics
- ethtool -s devname [speed N] [duplex half|full]  [autoneg on|off] [phyad  N][advertise N] [rx on|off] [tx on|off](checksum on off)
- -P dev permanent addr (ie mac)
-  Sets  Wake-on-LAN  options.   Not all devices support this.  The argument to this option is a string of characters specifying which options to enable.
-  wol p|u|m|b|a|g|s|d... 
```
			  p   Wake on PHY activity
			  u   Wake on unicast messages
			  m   Wake on multicast messages
			  b   Wake on broadcast messages
			  a   Wake on ARP
			  g   Wake on MagicPacket™
			  s   Enable SecureOn™ password for MagicPacket™
			  d   Disable (wake on nothing).  This option  clears  all
				  previous options.
```
