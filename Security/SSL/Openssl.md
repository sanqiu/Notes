Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2015-01-07T10:05:29+08:00

====== Openssl ======
Created Wednesday 07 January 2015

Public-Key Cryptography Standards
Public key infrastructure
Digest for integrity.. and PKI for authentication
Encrypt: decrypted with a key
	aes,des,base64,cast,zlib
Public-key method:
	rsa,dsa,dh,hmac,cmac
Digest: one-way 
	rsa,dsa,ssl3,md45,sha1-512,ecdsa,whirpool
	
	æ¶ˆæ¯æ‘˜è¦ç®—æ³•çš„ä¸»è¦ç‰¹å¾æ˜¯åŠ å¯†è¿‡ç¨‹ä¸éœ€è¦å¯†é’¥ï¼Œå¹¶ä¸”ç»è¿‡åŠ å¯†çš„æ•°æ®æ— æ³•è¢«è§£å¯†ï¼Œåªæœ‰è¾“å…¥ç›¸åŒçš„æ˜æ–‡æ•°æ®ç»è¿‡ç›¸åŒçš„æ¶ˆæ¯æ‘˜è¦ç®—æ³•æ‰èƒ½å¾—åˆ°ç›¸åŒçš„å¯†æ–‡ã€‚RSAå…¬å¸çš„MD5ç®—æ³•å’ŒSHA-1ç®—æ³•åŠå…¶å¤§é‡çš„å˜ä½“ã€‚
	å¯¹ä¸€ä¸ªä¿¡æ¯çš„æ‘˜è¦ç§°ä¸ºè¯¥æ¶ˆæ¯çš„æŒ‡çº¹æˆ–æ•°å­—ç­¾å
genpkey: 

**example**:
TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA

¡¡¡¡´ÓÆäÃû×Ö¿ÉÖª£¬ËüÊÇ

    »ùÓÚTLSĞ­ÒéµÄ£»
    Ê¹ÓÃECDHE¡¢RSA×÷ÎªÃÜÔ¿½»»»Ëã·¨£»
    ¼ÓÃÜËã·¨ÊÇAES£¨ÃÜÔ¿ºÍ³õÊ¼ÏòÁ¿µÄ³¤¶È¶¼ÊÇ256£©£»
    MACËã·¨£¨ÕâÀï¾ÍÊÇ¹şÏ£Ëã·¨£©ÊÇSHA¡£

