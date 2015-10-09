Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-08-24T20:53:27+08:00

====== SED ======
Created Sunday 24 August 2014

== COMMAND ==

** delete print substitute insert append read  transform quit**
```
sed '/my/p' ''datafile''  display lines containing 'my'
sed '$d' datafile   sed '/my/d' datafile  ## delete last line or lines containing my
sed 's/^My/You/g' datafile   ##substitute My with You globally in file datafile
sed -e '1,10d' -e 's/My/Your/g' datafile  ## two times editing
sed '/My/r introduce.txt' datafile  ## read into intro after finding My Lines
-i '//' file  	inset before line
-c '//' file	insert after line
-a '//' file	 append to this line
sed '1,10y/abcde/ABCDE/' example-----把1--10行内所有abcde转变为大写
sed '10q' example of **quiting**
```


