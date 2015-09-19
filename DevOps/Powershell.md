Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2015-01-06T16:25:48+08:00

====== Powershell ======
Created Tuesday 06 January 2015

- get-help, get-alias get-content, get-object, select-object,format-list,get-member
- select-object    1 ,2,3,4
- convertto-html[xml,csv]
- out-file path
- get-services -name '' |where {$_.status -eq ""}
- get-wmiobject [-class] win32_service|win32_process| win32_bios| win32_logicaldisk| win32_operatingsystem -computername "ip"  -credential username
- gwmi -query "select * from win32_service where name =like '%alerter%' "
-  Get-CimInstance -Query "SELECT * from Win32_Process WHERE name LIKE 'p%'"
-  Get-CimInstance -ClassName Win32_Process -Filter "Name like 'p%'"
- set-service  servicename -startuptype disabled

- if ($a -ceq $b) {} ##sensitive
- if ($a -ieq $b) {} ## insensitive
- foreach ($name in $names) {}
- new-object namespace.class @(argLList)  eg, PS >$memoryStream = New-Object System.IO.MemoryStream @(,$bytes)

```
[int]$var=value ## declare a var and its type(not necessary but helpful)
$myArray = 1,"Hello",3.5,"World"
$myMultiArray = @(
			 (1,2,3),
			 (40,50,60)
   )
invoke-webrequest $url -outfile name -credential user
gwmi win32_service | where {$_.**StartMode** -ne “Disabled”} | select name,startname ## $_.status -eq running
gwmi  win32_service -credential administrator -computer name
```
- the ` (backtick ascii 96 is the powershell continuation character)
```
get-process powershell -computername localhost, Server01, Server02 | format-table -property Handles, `
                    @{Label="NPM(K)";Expression={[int]($_.NPM/1024)}}, `
                    @{Label="PM(K)";Expression={[int]($_.PM/1024)}}, `
                    @{Label="WS(K)";Expression={[int]($_.WS/1024)}}, `
                    @{Label="VM(M)";Expression={[int]($_.VM/1MB)}}, `
                    @{Label="CPU(s)";Expression={if ($_.CPU -ne $()` 
                    {$_.CPU.ToString("N")}}}, `                                                                         
                    Id, ProcessName, MachineName -auto
```                    
- -filter
> enable the telnet from cmd:
> dism /online /Enable-Feature /FeatureName:TelnetClient
> from powershell:
> Import-Module servermanager
> Add-WindowsFeature telnet-client

- enable rdp from cmd: 
> reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
> disable; reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD > /d 1 /f

- enable remote assitant:
> reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fAllowToGetHelp /t REG_DWORD /d 1 /f
> == Enable WiFi ==

- enable the internet connection sharing first and config the ethernet interface to share its connections to the new  
created private network.
```
netsh wlan help
netsh wlan set hostednetwork mode=allow ssid='' key=''
netsh wlan start hostednetwork
==Shortcut keys==
F2, F3,
F4 delete from cursor to specific char
F7,Select from history
F8, Equivalent to the ctl+r  search based on the typed char
F9, Run from history N
```

##Notice##
- variable is thisIsVariable, cmdlet and members are ThisIsMember or Verb-Noun
- $lastExitCode  
- $?  [dollar hook]
- Measure-Command {Get-Command}
- Start-Transcript / recorde the operations of this ps session
- Write-Progress / Write-Verbose
- $pshome is powerhell var, env:path is system enviromental variable
- Read-Host, Start-Sleep, ReadKey(),
- here document @"      "@
- 'n new line   \`n to escape
##useful for amdin##
- get-appxpackage
- remove-appxpackage
- get-appxpackagemanifest -path
- get-ciminstance
- get-cimclass
- get-wppreference set/add/remove-wppreference -exclusionpath
- dism-> get/add-windowsimage -path(vhd)
- set-dnsclientserveraddress -serveraddress 
- set-winsystemlocale zh_CN
- compress-archive/expand-archive -path -des
- get-counter -listset tcpv4/icmp
- get-winevent -path -listlog
> start-transaction
> command-toexc -usetx; command-toexc2 -usetx
> stop-transaction/complete/undo
- test-wsman to test weather the computer is running the ws-management winrm service
- restart-netadapter; set-netadapter ; set-netconnectionprofile
- set-netnat;
- get-netfirewallrule/profile; new-netfirewalladdress/application/port/interface/filter;
- get-netroute/neighbor/ipaddress./ipinterface/tcpconnection/tcpsetting
-

