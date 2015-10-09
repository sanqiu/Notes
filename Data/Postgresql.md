**Postgresql Operations**

- createdb,createuser, dropdb, dropuser

>>	createdb -e echo, -E encoding, -O owner, -U username,  -w/W nopass/pass
>>	createuser -g role, -s issuperuser
>>	dropdb -p 5000 -h eden -i -e demo 
>>	dropuser -p 5000 -h eden -i -e joe

- pg_dump, pg_restore

>> pg_dump -d dbname > out_file,  psql -d dbname < infile
>> pg_dump -j num -F d -f out.dir dbname ##num of parallel task, only for dir type archive, not for plain, tar, sql
>> pg_restore -F d[ir]/t[ar] in.dir/tar


