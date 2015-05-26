Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-09-16T14:43:06+08:00

====== Htaccess ======
Created Tuesday 16 September 2014

== Rewrite ==
<IFMode_Rewrite>
【说明】定义重写发生的条件
【语法】RewriteCond TestString CondPattern [flags]
【作用域】server config, virtual host, directory, .htaccess
【覆盖项】FileInfo
【状态】 扩展(E)
【模块】mod_rewrite

== Flags ==
Flags are added to the end of a rewrite rule to tell Apache how to interpret and handle the rule. 
They can be used to tell apache to treat the rule as case-insensitive, to stop processing rules if the current one matches, 
or a variety of other options. They are comma-separated, and contained in square brackets. 
	C (chained with next rule)
	CO=cookie (set specified cookie)
	E=var:value (set environment variable var to value)
	F (forbidden - sends a 403 header to the user)
	G (gone - no longer exists)
	H=handler (set handler)
	L (last - stop processing rules)
	N (next - continue processing rules)
	NC (case insensitive)
	NE (do not escape special URL characters in output)
	NS (ignore this rule if the request is a subrequest)
	P (proxy - i.e., apache should grab the remote content specified in the substitution section and return it)
	PT (pass through - use when processing URLs with additional handlers, e.g., mod_alias)
	R (temporary redirect to new URL)
	R=301|405  (permanent redirect to new URL)
	QSA (append query string from request to substituted URL)
	S=x (skip next x rules)
	T=mime-type (force specified mime type)
	OR
	AND


== Conditions ==
Rewrite rules can be preceded by one or more rewrite conditions, and these can be strung together. This can allow you to only apply certain rules to a subset of requests. Personally, I use this most often when applying rules to a subdomain or alternative domain as rewrite conditions can be run against a variety of criteria, not just the URL. Here's an example:
	RewriteCond %{HTTP_HOST} ^addedbytes\.com [NC] 
	RewriteRule ^(.*)$ http://www.addedbytes.com/$1 [L,R=301]


== Exceptions and Special Cases ==
	<Pattern (is test string lower than pattern)
	>Pattern (is test string greater than pattern)
	=Pattern (is test string equal to pattern)
	-d (is test string a valid directory)
	-f (is test string a valid file)
	-s (is test string a valid file with size greater than zero)
	-l (is test string a symbolic link)
	-x (is test string a excutable)
	-F (is test string a valid file, and accessible (via subrequest))
	-U (is test string a valid URL, and accessible (via subrequest))
	

== Server Variables ==
	Server variables are a selection of items you can test when writing rewrite conditions. This allows you to apply rules based on all sorts of request parameters, including browser identifiers, referring URL or a multitude of other strings. Variables are of the following format:  **%{VARIABLE_NAME}**
**HTTP Headers**
	HTTP_USER_AGENT
	HTTP_REFERER
	HTTP_COOKIE
	HTTP_FORWARDED
	HTTP_HOST
	HTTP_PROXY_CONNECTION
	HTTP_ACCEPT
**Connection Variables**
	REMOTE_ADDR
	REMOTE_HOST
	REMOTE_USER
	REMOTE_IDENT
	REQUEST_METHOD
	SCRIPT_FILENAME
	PATH_INFO
	QUERY_STRING
	AUTH_TYPE
**Server Variables**
	DOCUMENT_ROOT
	SERVER_ADMIN
	SERVER_NAME
	SERVER_ADDR
	SERVER_PORT
	SERVER_PROTOCOL
	SERVER_SOFTWARE
**Dates and Times**
	TIME_YEAR
	TIME_MON
	TIME_DAY
	TIME_HOUR
	TIME_MIN
	TIME_SEC
	TIME_WDAY
	TIME
**Special Items**
	API_VERSION
	THE_REQUEST
	REQUEST_URI
	REQUEST_FILENAME
	IS_SUBREQ


== Sample Redirections ==
RewriteCond %{HTTP_HOST} old_domain\.com [NC] 
RewriteRule ^(.*)$ http://www.new_domain.com/$1 [L,R=301]

RewriteCond %{HTTP_HOST} ^domain\.com [NC] 
RewriteRule ^(.*)$ http://www.domain.com/$1 [L,R=301]

RewriteCond %{HTTP_HOST} ^www\.domain\.com [NC] 
RewriteRule ^(.*)$ http://domain.com/$1 [L,R=301]

RewriteRule ^old-url\.htm$ http://www.domain.com/new-url.htm [NC,R=301,L]
</IFMode_Rewrite>

<MOD_ENV>
SetEnv var val
SetEnvIf attribute regex [!]env-variable[=value] [[!]env-variable[=value]]

//Example://
//SetEnvIf Request_URI "\.gif$" object_is_image=gif//
//SetEnvIf Request_URI "\.jpg$" object_is_image=jpg//
//SetEnvIf Request_URI "\.xbm$" object_is_image=xbm//
//SetEnvIf Referer www\.mydomain\.example\.com intra_site_referral//
//SetEnvIf object_is_image xbm XBIT_PROCESSING=1//
//SetEnvIf ^TS* ^[a-z].* HAVE_TS//

</MOD_ENV>
