Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-08-22T10:20:35+08:00

====== Curl ======
Created Friday 22 August 2014

####curl  -o file.name -C url.url####

- -I only herader
- -i include http header
- -C -   Auto find last offset
- -L follow locations
- -S show error
- -s silent
- -f fail silently(with no return 500,404,etc)
- -x proxy protocol: //user: pass@host:port
- -X request method,defaut get
- -D auto save cookie
- -d ,--data
- -G, --get [use with -d] ## curl -G  -d var1=val1 -d var2=val2 //url//
- -b use last cookie
- -A " string"	user agent
- -H --header set header ## -H "Cookie:var=value;"
- -e --referer ""
- curl -o #2_#1.jpg http: //cgi2.tky.3web.ne.jp/~{zzh,nick}/[001-201].JPG
- -T upload 
- -d http post curl -d "user=nickwolfe&password=12345" http: //www.linuxidc.com/login.cgi
- --connect-timeout <seconds> each connection time out.
- -m, --max-time <seconds>  whole process times taken.
- -o output-file
- --socks5-hostname	host:port
- -w write-output variable  -w %{time_total}\\n
> 	http_code     http_connect 	num_connects
> 	local_ip loca_port  remote_ip  remote_port
> 	size_download  size_upload    size_request  size_responcse  size_header
> 	speed_download  speed_upload ssl_verify_result
> 	time_appconnect time_connect time_namelookup time_total	
	
-  curl --silent http: //www.example.com/ > /dev/null   ##silent and no output to stdout.
-  --trace-time   append time elapsed to each action
-  --trace-ascii  like --trace but withour hex data ,more detailed than -v,used to debug
