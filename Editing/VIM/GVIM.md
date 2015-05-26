Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-08-22T10:21:25+08:00

====== GVIM ======
Created Friday 22 August 2014

== Gvim ==

set tag=./tags_file,./TAGS
set wrap nowrap
set lbr nolbr
set cmdheight= ch=
set colmns lines
set relativenumber    //  rnu
set diff
set wildmode=full wim=full  
set wildmenu // wmnu
set sh==/bin/bash
set encoding enc=utf-8
set debug=msg


== tag ==

:tag name
:tag   # previous
:tags  tag stack
:stselect name # list tags
:stjump name  # directly or list
:tfirst trewind tnext tlast tprevious
:ptag preview 
:ptjump name 
