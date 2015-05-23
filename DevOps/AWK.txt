Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-08-24T20:19:55+08:00

====== AWK ======
Created Sunday 24 August 2014

== Usage ==
awk  '/pattern/ {action}' {filenames}
$0 all fields,$! 1 filed,$n, n fields  NF=cardinal, $NF =ordinal

== parameters ==
-f script-file filename
-F field-separator
-v var=val
-D debug

== case: ==
cat /etc/passwd |awk  -F ':'  'BEGIN {print "name,shell"}  {print $1","$7} END {print "blue,/bin/nosh"}'
 awk  -F  ': '	 '/root/{print $7}' 		/etc/passwd       
awk -F ':' 	'NR==2'  /etc/passwd  ##specific line    
