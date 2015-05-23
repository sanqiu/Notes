Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-10-30T10:50:08+08:00

====== Gpg ======
Created Thursday 30 October 2014

gpg --gen-key
gpg --list-keys ## public will be listed
gpg --fingerprint ## list print for short verify
 gpg --list-secret-keys | grep ^sec 
gpg --list-public-keys|
gpg --import public.key
gpg --allow-secret-key-import --import private.key
gpg --delete-key "user name" ## delete pub key ,error if paired with private key, delete it first.
gpg --delete-secret-key "user name"
 
git commit -S -m '"
git log --show-signature  

using:
gpg -e [encrypt] -s "sender" -r "receiver" datafile.name
gpg -d [decrypt] mydata.gpg
