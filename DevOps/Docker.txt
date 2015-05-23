Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4

====== Docker ======
Created Friday 14 November 2014

==== Parameter ====

== Daemon: ==
	--iptables=true
	--insecure-registry=[] ## --insecure-registry myregistry:5000
	-H, --host=
	--ip=0.0.0.0                               Default IP address to use when binding container ports
	  --ip-forward=true                          Enable net.ipv4.ip_forward
	  --ip-masq=true                             Enable IP masquerading for bridge's IP range
	  --iptables=true                            Enable Docker's addition of iptables rules
	   -l, --log-level="info"                    Set the logging level
	  --label=[]                                 Set key=value labels to the daemon (displayed in `docker info`)
	  --mtu=0            
	--selinux-enabled=false


== RUN ==
	-a attach to stdin,stdout.stderr ## default when no -d fefined.
	-d detach ## run in background ## when attach to a detached container, use ctrl-p ctrl-q to detach it again without stopping the container.
	--add-host=host:ip ## to /etc/hosts
	-d detached mode in background and new cont id
	--device=/dev/sdc:/dev/xvdc
	-e , --environment=[] 
	--env-file=[file-path]   ## line dilimited file
	--entrypoint= ## override the entrypoint in the dockerfile ,work with cmd like [cmd args]
	--expose=PORT ## to another containers
	-p Publish a container's port to the hos   format: ip:hostPort:containerPort | ip::containerPort | hostPort:containerPort | containerPort
	-P publish all **exposed** ports to host
	--dns= 
	-h, --hostname=
	**--link=[name:alias] ## name : the container that this container want to communicate to. alias: this link relation and willbe a env in this container with name [echo [RELATION]_NAME]##**
		the linked containers communicate using the **NAME**'s exposed port.
	-i --interactive=true|false  mode ## almost with -t options
	-m --memory=[]   limit memory
	-c --cpu-shares=0
	--cap-add || --cap-drop []  ## add | drop linux capabilities
	--security-opt="label:[user|role|type|level|disable]:[^|^|^|^] "
	--net="host| bridge| none| container: id|"
	--privilege=true| false #A “privileged” container is given access to all devices and run **docker in docker**.
	--restart="no| on-failure:max-tries| always"
	--rm=true| false ## remove when exit
	-v ,--volume=[] /host:/container  
		## file path or dir
		## /var/db:/data1:rw  [default rw] :: add and marked as a volume for other contaners's use 
		## a stopped containers works as well
		## if exist in container, path from host override it
		## if not exist on host, docker create it
	--volume-from=id:rw  ## mount a volume from another container 
	--cpuset='0-3' ## limit into a cpu range
	--name= to this container ##  or randomly assign one with numbers and characters
	--tty  a pseudo tty
	--user=, -u
	-w, --workdir='' ## 
	

==== Command ====
info ##images and containers num and storage
version ##
images ## --no-trunc,--filter "var=val"
attach ## mount a running background container
build -t . ## build image ffrom source
	-t="user/repo:tag",	 **.**	 : dir dockerfile lives in
commit CID user/repo:tag ##
	-a author
	-m message
	-p pause container when commiting
cp CONTAINER:PATH HOSTPATH ## relative to root
create ## create but not run it
diff  CID##changes  in container's fs ## Add, delete,change
events --since '2013-09-03' ## events about the docker engine ## 
	--filter "var=val"
	Convert seconds since the epoch (1970-01-01 UTC) to a date
	$ date --date='@2147483647'
exec -it -d ##  run cmd in an existing container
logs -ft(follow and time) --tail=N ##	logs about a container  
diff ## diff when building images
save IID -o imge.tar/ load -i imge.tar /  ## save image to tarball and import it  and load it to stdin
	restore a image with its tag from file.tar
import/ export ## export contents and import it
	cat export.tar |docker import - image-name: tag
	docker import http: //file/to/tar image-name: tag
inspect ## get detailed info about image or container
	-f fiter
kill ## kill container's pid
port ID [C'sPORT]  ## port mappings CONTAINER private_port/proto
pause| unpause  container
ps ## list containers 
	-a all, -l last
rm| rmi 
start/ stop / restart
tag ID user/repo:tag ## 
top ## runnint process in container
docker events ##real time events  from docker server
docker logs ## the ps running logs
docker history IID
login/ pull / push
search
exec ## run command in a existing container.
build --no-cache  -t "tags=repo/image:tag" /path/to/dockerfile

==== Dockerfile ====
FROM
MAITAINER
RUN
EXPOSE
ADD src dst
	#may be a url
	#uid and gid are 0, file from url is 600
	#
COPY src dst
	#relative to the building directory
	#may be wildcard
	#dst must be absolute path
ENTRYPOIT
WORKDIR
CMD  ## can be viewed as a paparam of ENTRYPOINT ## overriden by specified cmd from [docker run cmd] option
	CMD ["executable","param1","param2"] (exec form, this is the preferred form)
	CMD ["param1","param2"] (as default parameters to ENTRYPOINT)
	CMD command param1 param2 (shell form)
VOLUME
USER
ONBUILD ## Exex after the downstream,ie the FROM instruction ## any instruction can be a trigger of ONBUILD
