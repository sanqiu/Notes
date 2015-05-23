Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-08-29T13:49:56+08:00

====== VIM ======
Created Friday 29 August 2014

emacs
		frame1											
win1				win2
buffer1 &2		buffer 3&4

vim
			window
frame1						frame2
buffer1&2					buffer3&4

vim +10 	##  go to 10th line from command line 
:%s/pattern//gn ## count patterns withous change buffer
:. erpeat a command
:sp [file]  C-W s 
: vsp  [file] C-W v
: new [cmd]new window
:vnew [file]
[[/str]] ||| ?str  search forward and search backwards
% find the matching brace or bracket
ve[u|U]  down|upper case word
:edit   reload the file ## : edit ++opt + cmd  ## opt={fileformat| encoding| binary} ## cmd={+10|/part| set\ num} 
: buffers : files  list buffers and frames
: buffer N
: bd N # buffer delete
v/V Select regi on or lines
 
w forward words' head
e  word end
b begging of word
xp  traspose the two letters after the cursor and move the cursor to their middle.
{ }  last or next paragraph
( ) last or next sentence
0 gm $ ^
n%
n|   nth column
H M L   top middle bottom of window
r replace
S=cc  change current line
~ shit case and advance cursor
<< >>  < >  shift
dd=D
z. move the current line to center
]s  next misspelled words
s[ before
zg  add as good words
z=  suggest words
xp  ##switch the next two character position and move cursor between them
ddp

:map c e↵	map c ↦ e in normal & visual mode
:map!  c e↵	map c ↦ e in insert & cmd-line mode
:unmap c↵  :unmap!  c↵	remove mapping c
:mk f↵	write current mappings, settings... to file f
:ab c e↵	add abbreviation for c ↦ e
:ab c↵	show abbreviations starting with c
:una c↵	remove abbreviation c

Scrolling & multi-windowing
^E ^Y	scroll line up, down
^D ^U	scroll half a page up, down
^F ^B	scroll page up, down
K	lookup keyword under sor with man
:cn↵  :cp↵	display the next, previous error
:cl↵  :cf↵	list all errors, read errors from file
^L ^G redraw screen
ga	show ASCII value of character under cursor
gf	open file which filename is under cursor
:redir>f↵	redirect output to file f
:mkview [f]	save view configuration [to file f]
:loadview [f]	load view configuration [from file f]

emmet:
c-y 
ul#icons>div.title+li#ico$*3
visual select -> C-Y -> ul>li*
c-y d inward
c-y D outward
c-y n ##next edit point
c-y N ## Previous
on img, c-y i
c-y k ##kill a tag
c-y j  ## closure tp open tag
c-y /  ## comment or not
c-y a/A anchor
c-x c-o   complete
C-O  number  ## GO To  older cursor position
c-i or **tab** ## newer cursor position 
: tselect  : stjump 
: DelimitMateTest
delimitMate_autoclose
set tabstop?  


c-a increment
c-x decrement
cw delete for word and insert mode
guaw change a word to lowercase
gu : all the folowing text. gugu: current line
g~[w/b/h/l] swap case
dap  delete a entire paragraph


**in insert mode**
c-h : backspace
c-w: delete word
c-u : delte back to start line
c-[ c-o = esc  ## return to normal mode
c-r reg  ## paste in insert mode
c-r = ## insert the result
c-v[decimal] // c-v u[code] // ga ## to reveal the code of char
c-k ? I to insert ¿ // h diagraph-table
gR // to virtual replace mode tab stop 
c-v down and shift+i to comment out

