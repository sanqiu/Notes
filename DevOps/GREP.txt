Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-08-24T21:53:50+08:00

====== GREP ======
Created Sunday 24 August 2014

-E extended-grep
-F fixed-strings
-G basic-strings
-P perl-grep

== Modifier ==
[[/m]] multi lines -m
[[/s]] single line -s  including newline treat as one line
[[/i]] ignore case -i
[[/x]] delete blank -x

== Meta-character ==
\ escape
[    ] begin and end of character matching
| another option

== Subpattern ==
( ) begin and end of subpatterns 

== Assertion ==
^ begin
& end 
- exclude

== placeholder ==
. (dot) any single character except the \n

\d 任一十进制数字
\D任一非十进制数的字符
\s任一空白字符
\S任一非空白字符
\w任一“字”的字符
\W任一“非字”的字符
“\cx”代表"control-x"
“\040”可以用来表示空格
“\a”代表alarm
\1 the first found subpattern \2 \3...
[@[:digit:][:alnum:][:alpha:][:ascii:][:blank:][:cntrl:][:graph:][::lower:][:print:][:punct:][:space:][:upper:][:xdigit:]]

== Regexp pattern ==
Brackets	Brackets are used to find a range of characters:
[abc]	Find any character between the brackets
[^abc]	Find any character not between the brackets
[0-9]	Find any digit from 0 to 9
[A-Z]	Find any character from uppercase A to uppercase Z
[a-z]	Find any character from lowercase a to lowercase z
[A-z]	Find any character from uppercase A to lowercase z
[adgk]	Find any character in the given set
[^adgk]	Find any character outside the given set
(red|blue|green)	Find any of the alternatives specified
Metacharacters	Metacharacters are characters with a special meaning:
.	Find a single character, except newline or line terminator
\w	Find a word character
\W	Find a non-word character
\d	Find a digit
\D	Find a non-digit character
\s	Find a whitespace character
\S	Find a non-whitespace character
\b	Find a match at the beginning/end of a word
\B	Find a match not at the beginning/end of a word
\0	Find a NUL character
\n	Find a new line character
\f	Find a form feed character
\r	Find a carriage return character
\t	Find a tab character
\v	Find a vertical tab character
\xxx	Find the character specified by an octal number xxx
\xdd	Find the character specified by a hexadecimal number dd
\uxxxx	Find the Unicode character specified by a hexadecimal number xxxx
== Quantifiers ==	
n+	Matches any string that contains at least one n
n*	Matches any string that contains zero or more occurrences of n
n?	Matches any string that contains zero or one occurrences of n
n{X}	Matches any string that contains a sequence of X n's
n{X,Y}	Matches any string that contains a sequence of X to Y n's
n{X,}	Matches any string that contains a sequence of at least X n's
n$	Matches any string with n at the end of it
^n	Matches any string with n at the beginning of it
?=n	Matches any string that is followed by a specific string n
?!n	Matches any string that is not followed by a specific string n
? 0 or 1 
(null) undefined
+ 1 or more
{ } begin and end of most and least pattern
?? non greedy


== delimiter ==
any non-alphanumeric characters other than \ can be used to delimit perl-style pattern  (); {};  []; <>; ##;
