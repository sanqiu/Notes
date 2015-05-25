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
	
	消息摘要算法的主要特征是加密过程不需要密钥，并且经过加密的数据无法被解密，只有输入相同的明文数据经过相同的消息摘要算法才能得到相同的密文。RSA公司的MD5算法和SHA-1算法及其大量的变体。
	对一个信息的摘要称为该消息的指纹或数字签名
genpkey: 
