Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-10-22T10:32:11+08:00

====== Interfaces ======
Created Wednesday 22 October 2014

Redhat The new naming convention for Network Interfaces

Device	Old Name	New Name
Embedded network interface (LOM)	eth[0123…]	em[1234…] ⁠[a]
PCI card network interface	eth[0123…]	p<slot>p<ethernet port> ⁠[b]
Virtual function	eth[0123…]	p<slot>p<ethernet port>_<virtual interface> ⁠[c]
[a] New enumeration starts at 1.
[b] For example: p3p4
[c] For example: p3p4_1


maroon:  AGP  acceleration graphics port
pci: white  32bit and 64 bit

pci-e : dark or dark-gray

