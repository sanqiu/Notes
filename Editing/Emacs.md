Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-09-10T21:12:36+08:00

====== Emacs ======
Created Wednesday 10 September 2014
emcs -nw  ## no window
		-fw full width
		

C-g quit commands
alt = = meta == esc == C-[
M-x command
C-p previous line
c-n next line
c-f foward 	char
c-b back char
m-f onw word
m-b  back word
c-a line head
c-e line end
m-a  begin of sentence
m-e end of sentence
c-{ paragraph begin
c-} paragraph end
c-v pagedown
m-v pageup
c-q  insert control key quoted insert
c-d delete a char right
m-d delete a word right
m-del // m-backspace all left
c-_ undo
c-x u undo
c-g redo
c-u NUM COMMAND  run 2 times of the command default 4 times
c-space mark
C-w ⇒ Cut (really kill)
M-w ⇒ Copy (really kill-ring-save)
C-y ⇒ Paste (really yank)
M-y (after C-y) ⇒ Historic Paste of old cuts/copies “bonus”
c-k  cut/kill from point to end

Mouse command	Description
B1	This command sets the point; drag B1 to set the region.
B1-B1	This command marks a word.
B1-B1-B1	This command marks a line.
B2	This command yanks the text.
B3	This command sets and highlights the region, and then places it in the kill buffer without killing it. If a region is already highlighted and set, the end of the region moves to the place where you click.
B3-B3	This command sets and highlights the region and then kills it. If a region is already highlighted and set, the end of the region moves to the place where you click, and then the region is killed.


C-c current editing mode
C-x current file buffer
C-h help
M-x command
 c-x  c-c   exit
c-x c-f open file
## /ssh:remote:file  ## /sudo::file

C-X b another buffer
c-x k kill a buffer
c-x c-s save the buffer
c-x c-w save as 
c-x s ask to save some buffer
c-x c-z make emacs background
c-x c-b list buffer
c-x c-q   readonly or version control
c-x i insert file
c-h m help about the current mode
c-x 1 close other buffer
m-x MDOE-NAME switch mode 

Text 模式键绑定
键	描述或者函数
Esc	作为 mode-specific 命令的前缀
Esc Tab、M-Tab	ispell-complete-word spell checking
Esc S、M-S	center-paragraph 	
Esc s、M-s	center-line
inverse-add-global-abbrev
c-x a i g/l  add global or local abbreviation
c-x a g / a l
m-x kill-all-abbrevs delete all abbreviations
c-x c-i indet-rigidly  indent on space
c-u (-5) **c-x c-i** indent 4 (-5) spaces  ==c-x tab
m-\ delete all horizental spaces // join the next
c-o open new line  without moving cursor
C-t，transpose-chars 
M-t，transpose-words 
C-x C-t transpose-lines
m-^ delete-indentation == joining lines
m-u uppcase-word  m-l downcase-word from cursor to word end
C-x C-l 和 C-x C-u //////////////////// downcase-region 和 upcase-region
c-s c-w search the pattern between cursor and word end
c-s c-y search the pattern between cursor and line end
c-s isearch-forward  //  c-r  isearch-backward
c-m-s   isearch-forward-regexp 或者 c-m-r  isearch-backward-regexp
M-x replace-string  search and switch
m-x replace-regexp  // regex search and witch  
m-%  // m-x query-replace // ask to search and switch each time
m-x  query-replace-regexp 
 Emacs 搜索和替换命令
绑定	命令或者函数	描述
C-s [字符串] [C-w] [C-y]	isearch-forward	前向增量地在整个缓冲区中搜索字符串（在缺省情况下，将搜索您上一次给出的搜索字符串，如果存在），C-w 使用从光标处到光标所在单词的词尾之间的文本，以及 C-y 使用从光标处到光标所在行的行尾之间的全部内容。
C-r [字符串] [C-w] [C-y]	isearch-backward	后向增量地在整个缓冲区中搜索字符串（在缺省情况下，将搜索您上一次给出的搜索字符串，如果存在），C-w 使用从光标处到光标所在单词的词尾之间的文本，C-y 使用从光标处到光标所在行的行尾之间的全部内容。
C-s Enter C-w单词或者短语	word-search-forward	在整个缓冲区中前向搜索给定的单词或者短语（不管它们之间如何分隔）。
C-r Enter C-w单词或者短语	word-search-backward	在整个缓冲区中后向搜索给定的单词或者短语（不管它们之间如何分隔）。
C-M-s	isearch-forward-regexp	在整个缓冲区中前向增量搜索给定的正则表达式。
C-M-r	isearch-backward-regexp	在整个缓冲区中后向增量搜索给定的正则表达式。
replace-string	从光标处到缓冲区末尾搜索给定的字符串，并使用给定的字符串来替换它。
replace-regexp	从光标处到缓冲区末尾搜索给定的正则表达式，并使用给定的字符串来替换它。
M-%	query-replace	从光标处到缓冲区末尾搜索给定的字符串，对于搜索到的每个实例，询问（如表 4 中所述）是否使用给定的字符串来进行替换。
C-M-%	query-replace-regexp	从光标处到缓冲区末尾搜索给定的正则表达式，对于搜索到的每个实例，询问（如表 4 中所述）是否使用给定的字符串来进行替换。
m-x ispell--buffer  flyspell-mode
Emacs 的拼写命令
绑定	命令或者函数	描述
M-$	ispell-word	调用 Ispell 以检查光标处单词的拼写。
ispell-region	调用 Ispell 以检查某一区域中的拼写。
ispell-buffer	调用 Ispell 以检查从光标处到缓冲区末尾的所有单词的拼写。
flyspell-mode	在您输入内容的同时，调用 Ispell 以便在后台检查缓冲区中所有单词的拼写，突出显示所有的拼写错误。

emacs +315:20 files.txt files.txt --insert txt.file// open and go to 315 lines 20 colums asdn insert txt.file
emacs -nw  no x window
--display hostname: X-num
-q no init fiels loaded
-u user --debug-init //users' init file
/etc/macs/site-start.el
--eval ''   lisp command
c-x r r /s  /j register
c-x 2  split vertical c-x 3 split horizentally
c-x 4 f open file in new window
c-x 4 b list buffers
c-x 4 c-o new buffer but remain cursor in current
c-m-v  move inside a window
c-x o move to next window
c-x 0 // delete current window c-x 1 delete all others
c-x 4 0 // kill bufffer and window
m-> move to end 
c-u 11 c-x 3 split window horizental and make the left 11 char wide.
m-x compare-windows  
c-x 0 // close current c-x 1 // close all others // c-x  3 split vertical // c-x 2 split horizental // c-x 4 b switch windows // c-x ^ enlarge //c-x - shrink // c-x + balance windows //c-M-v move windows // c-x 5  2 new frame, c-x 5 0 close this emacs client//
c-h v FUNC // desribe func's value // m-x set-variable VAR enter VAL //  
c-h k // describe a key (seqence)
key-bindding // m-x global-set-key <key-name> [enter] <key-command>
m-x // menu-bar-mode // tool-bar-mode // scroll-bar-mode // display-time // column-number-mode // line-number-mode 
m-x font-lock-mode // syntax on toggle
m-x customize // customize-mode 
c-x c-h // **super**
c-x #  // tell server the client is over and check other request.
c-h 1 == view-lossage // view history
