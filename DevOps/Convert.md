Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-11-05T16:24:40+08:00

====== Convert ======
Created Wednesday 05 November 2014
Mogrify ### for batch
-compress type       type of pixel compression when writing the image
-size geometry       width and height of imag
-quality 
-format


== aspect ==
convert dragon.gif    -resize 64x64  resize_dragon.gif

== ignore aspect ==
convert dragon.gif    -resize 64x64\!  exact_dragon.gif
  convert terminal.gif  -resize 64x64\!  exact_terminal.gif

Only Shrink Larger Images ('>' flag)
convert dragon.gif    -resize 64x64\>  shrink_dragon.gif
  convert terminal.gif  -resize 64x64\>  shrink_terminal.gif
Only Enlarge Smaller Images ('<' flag)

Percentage Resize ('%' flag)
convert dragon.gif    -resize 50%  half_dragon.gif
  convert terminal.gif  -resize 50%  half_terminal.gif
