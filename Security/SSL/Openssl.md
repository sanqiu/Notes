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
	

��ϢժҪ�㷨����Ҫ�����Ǽ��ܹ��̲���Ҫ��Կ�����Ҿ������ܵ������޷������ܣ�ֻ��������ͬ���������ݾ�����ͬ����ϢժҪ�㷨���ܵõ���ͬ�����ġ�RSA��˾��MD5�㷨��SHA-1�㷨��������ı��塣
 	��һ����Ϣ��ժҪ��Ϊ����Ϣ��ָ�ƻ�����ǩ�� genpkey: 

TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA

�����������ֿ�֪������
  1  ����TLSЭ��ģ�
  2  ʹ��ECDHE��RSA��Ϊ��Կ�����㷨��
  3  �����㷨��AES����Կ�ͳ�ʼ�����ĳ��ȶ���256����
  4  MAC�㷨��������ǹ�ϣ�㷨����SHA��

