Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-10-13T10:35:11+08:00

====== SendMail ======
Created Monday 13 October 2014
- -bv veryfie id
- -v verbose

####postqueue####
-	-i id
-	-f flush
-	-p print
-	-s site


**/etc/postfix/main.cf:**
* After modifying main.cf, be sure to run '/etc/init.d/postfix reload'.*
####SPAM####

*local Email server troubleshooting: *

> telnet mail.server 25
> HELO my.server
> MAIL FROM:  <user @ my.server>
> RCPT TO:  <rcpt@ server.com>
> DATA

**CODE denoting**
- start with 2 : successful
- start with 3: additional info needed
- start with 4: try again(temporary error: server busy,disk full,spam checks) 
- start with 5: permanent error(denied,mailbox full,syntax error)


>  200	(nonstandard success response, see rfc876)
>  211	System status, or system help reply
>  214	Help message
>  220	<domain> Service ready
>  221	<domain> Service closing transmission channel
>  250	Requested mail action okay, completed
>  251	User not local; will forward to <forward-path>
>  252	Cannot VRFY user, but will accept message and attempt delivery
>  354	Start mail input; end with <CRLF>.<CRLF>
>  421	<domain> Service not available, closing transmission channel
>  450	Requested mail action not taken: mailbox unavailable
>  451	Requested action aborted: local error in processing
>  452	Requested action not taken: insufficient system storage
>  500	Syntax error, command unrecognised
>  501	Syntax error in parameters or arguments
>  502	Command not implemented
>  503	Bad sequence of commands
>  504	Command parameter not implemented
>  521	<domain> does not accept mail (see rfc1846)
>  530	Access denied (???a Sendmailism)
>  550	Requested action not taken: mailbox unavailable
>  551	User not local; please try <forward-path>
>  552	Requested mail action aborted: exceeded storage allocation
>  553	Requested action not taken: mailbox name not allowed
>  554	Transaction failed

**with attachemnt**
>  uuencode attach.file | mail -s "subject" receiver.@mail.com
