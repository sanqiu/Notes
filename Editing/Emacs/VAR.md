Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-09-15T14:21:17+08:00

====== VAR ======
Created Monday 15 September 2014
Common Variables
auto-mode-alist 如果设置为 nil,那么将关闭根据文件名扩展自动选择主要模式的功
能。它的缺省值是一些文件名扩展和相应模式的列表。
auto-save-default 如果没有将其设置为 nil,那么 Emacs 则根据预设的时间间隔,自动地
将经过更改的缓冲区保存到相应的文件。它的缺省值是 t。
auto-save-interval 包含调用 Auto-save 模式(如果它被设置为“真”)之后经过更改的字符的
数目,其缺省值是 300。
calendar-latitude 包含用户工作站位置的纬度值,采用度数表示;其缺省值是 nil。
calendar-longitude 包含用户工作站位置的经度值,采用度数表示;其缺省值是 nil。
calendar-location-name 包含用户工作站所在位置的位置名(如城市、州或省、国家/地区)的
值,其缺省值是 nil。
colon-double-space 如果没有将其设置为 nil,那么填充文本的命令将在冒号后面插入两个
空格而不是一个。其缺省值是 nil。
command-line-args 包含在当前 Emacs 会话中所执行的命令行中使用的参数列表。
command-line-default-directory 包含执行当前 Emacs 会话的目录的路径名。
compare-ignore-case 如果没有将其设置为 nil,那么在运行 compare-windows 函数的时
候,Emacs 将忽略大写字母和小写字母的区别,如在本系列文章的第 5
部分教程中所描述的(请参见参考资料)。其缺省值是 nil。
confirm-kill-emacs 如果设置为 nil,那么 Emacs 在退出的时候不请求确认;否则,可能自
定义 Emacs Lisp 函数以完成退出验证工作,如 y-or-n-p(请参见使得
简短的回答成为可能部分)。其缺省值是 nil。
default-justification 设置缺省的对齐风格。该值可能是 left、right、center、full 或
者 none 中的一个。其缺省值是 left。
default-major-mode 为新的文件或者缓冲区选择缺省主要模式。其缺省值是 fundamental-
mode。
display-time-24hr-format 如果设置为 t,那么 Emacs 将采用 24 小时军用格式来显示时间,而不是
采用带有 AM 或者 PM 后缀的标准 12 小时格式。其缺省值是 nil。
display-time-day-and-date 如果没有将其设置为 nil,那么 Emacs 以当前星期几、当前月份和日期
的格式来显示时间,而不仅仅显示小时和分钟。其缺省值是 nil。
fill-column 包含各行中的列数(从此处开始填充文本到下一行)。其缺省值是 70。
initial-major-mode 指定启动时用于 *scratch* 缓冲区的主要模式。其缺省值是 lisp-
interaction-mode。
inverse-video 如果没有将其设置为 nil,那么 Emacs 将对显示的颜色取反(如果可能
的话)。其缺省值是 nil。
kill-ring 包含 Emacs 剪切环的内容,如本系列文章的第 3 部分教程中所描述的
(请参见参考资料)。
kill-ring-max 设置剪切环中所允许的条目数。其缺省值是 60。
kill-whole-line 如果没有将其设置为 nil,那么 kill-line 函数(绑定于 C-k)将
剪切当前行以及 其尾部的换行符(如果是在该行的开头处执行这个函
数)。其缺省值是 nil。
make-backup-files 如果没有将其设置为 nil,Emacs 将进行任何更改之前保存缓冲区的备
份(使用相同的文件名,但在文件名后追加了波浪符 (~))。
mark-ring 包含该缓冲区的当前标记环的内容,如本系列文章的第 3 部分教程中所
描述的(请参见参考资料)。
mark-ring-max 包含标记环中所允许的条目数。其缺省值是 16。
mouse-avoidance-mode 包含描述 mouse-avoidance 模式类型的值,如本系列文章第 5 部分教程
中所描述的(请参见参考资料)。其缺省值是 nil。
next-line-add-newline 如果没有将其设置为 nil,那么只要按下向下箭头键,Emacs 就会在
该缓冲区的末尾添加一个新行。其缺省值是 nil(在更新的 Emac 版本
中)。
scroll-bar-mode 包含 Emacs 框架侧边缘(放置滚动条的位置)的值:right 或 left。
如果设置为 nil,则关闭滚动条。其缺省值是 left。
scroll-step 包含使用 scroll-down 和 scroll-up 函数(在缺省情况下,分别绑
定于 PgDn 和 PgUp 键)在缓冲区中移动的行数。如果设置为 0,那么在
滚动的时候,Emacs 使光标位于窗口的中心位置。
show-trailing-whitespace 如果没有将其设置为 nil,那么 Emacs 将显示当前缓冲区中的行尾处的
任何空白字符。其缺省值是 nil。
visible-bell 如果没有将其设置为 nil,那么 Emacs 将使得该框架闪烁,而不是鸣响
系统警铃。其缺省值是 nil。
x-cut-buffer-max 设置剪切环的字符的最大数目,该剪切环同样存储于 X Window System
的剪切缓冲区中。其缺省值是 20000。
