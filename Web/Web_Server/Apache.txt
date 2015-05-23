Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-08-28T09:12:52+08:00

====== Apache ======
Created Thursday 28 August 2014

apache2ctl
 -D name            : define a name for use in <IfDefine name> directives
  -d directory       : specify an alternate initial ServerRoot
  -f file            : specify an alternate ServerConfigFile
  -C "directive"     : process directive before reading config files
  -c "directive"     : process directive after reading config files
  **-e level           : show startup errors of level (see LogLevel)**
  -E file            : log startup errors to file
  -v                 : show version number
  -V                 : show compile settings
  -h                 : list available command line options (this page)
  -l                 : list compiled in modules
  **-L                 : list available configuration directives**
  -t -D DUMP_VHOSTS  : show parsed settings (currently only vhost settings)
  **-S                 : a synonym for -t -D DUMP_VHOSTS**
  -t -D DUMP_MODULES : show all loaded modules 
  -M                 : a synonym for -t -D DUMP_MODULES
  **-t                 : run syntax check for config files**
  -T                 : start without DocumentRoot(s) check
  -X                 : debug mode (only one worker, do not detach)

expires (cache) 

