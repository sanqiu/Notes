Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-08-25T17:37:27+08:00

====== Shell ======
Created Monday 25 August 2014

== 文件检查 ==
-b  block device
-c character device
-d directory
-e exits
-f file(general)
-g setgid
-h -L symbolic link file
-p pipe
-r readable
-S socket
-s not blank
-u setuid
-w writable
-x file excutable directory indexable
-O owner 
-G group
file1 -nt file2 ##newer than
file1 -ot file2 ##older than

== 字符检查 ==
-n **string** not null (length> 0)
-z string null (length ==0) 

///////////////////////////////////////////////////////
redirect 0, 1, 2
input, output, error
ls /file/no/exist 2> ls-errors.txt   ## &>> booth error and output

Arithmetic expansion uses the form:
$((expression))
echo $((2+2**2)) ## ** is exponentiation

echo {0..10},, echo im{a,b,c}XYZZ

== echo $(which ls) ## echo $`which ls` ==
echo ${x}abc ## $x=ABC,differentiate with echo $xabc
ctl-k
ctl-u
alt-d
alt-backspace
ctl-y
alt-?  tab 2 times
alt-* all possible completions
alt-p
ctl-o ## excute without exit hte ctl-r 

## often used to shared directory
real user : the user that is running the file ## effective user 4000 ## setuid
real group : the froup that is running the directory ## effective group ## 2000 ## setgid
sticky bit: to prevent others to rename,delete the directory(not files) ## 1000 ## sticky bit

== while: ==
#!/bin/bash
	X=0
	while [ $X -le 20 ]
	do
		echo $X
		X=$((X+1))
	done

== for: ==
	#!/bin/bash
	for X in *.html
	do
			grep -L '<UL>' "$X"
	done

== if then fi done ==
	#!/bin/bash
	X=3
	Y=4
	empty_string=""
	if [ $X -lt $Y ]    # is $X less than $Y ? 
	then
		echo "$X=${X}, which is smaller than $Y=${Y}"
	fi
	if [ -n "$empty_string" ]; then
		echo "empty string is non_empty"
	fi
	if [ -e "${HOME}/.fvwmrc" ]; then           # test to see if ~/.fvwmrc exists
		echo "you have a .fvwmrc file"
		if [ -L "${HOME}/.fvwmrc" ]; then       # is it a symlink ?  
			echo "it's a symbolic link
		elif [ -f "${HOME}/.fvwmrc" ]; then     # is it a regular file ?
			echo "it's a regular file"
		fi
	else
		echo "you have no .fvwmrc file"
	fi
