Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-10-11T10:04:12+08:00

====== sprintf ======
Created Saturday 11 October 2014

A type specifier that says what type the argument data should be treated as. Possible types:

% - a literal percent character. No argument is required.
b - the argument is treated as an integer, and presented as a binary number.
c - the argument is treated as an integer, and presented as the character with that ASCII value.
d - the argument is treated as an integer, and presented as a (signed) decimal number.
e - the argument is treated as scientific notation (e.g. 1.2e+2). The precision specifier stands for the number of digits after the decimal point since PHP 5.2.1. In earlier versions, it was taken as number of significant digits (one less).
E - like %e but uses uppercase letter (e.g. 1.2E+2).
f - the argument is treated as a float, and presented as a floating-point number (locale aware).
F - the argument is treated as a float, and presented as a floating-point number (non-locale aware). Available since PHP 4.3.10 and PHP 5.0.3.
g - shorter of %e and %f.
G - shorter of %E and %f.
o - the argument is treated as an integer, and presented as an octal number.
s - the argument is treated as and presented as a string.
u - the argument is treated as an integer, and presented as an unsigned decimal number.
x - the argument is treated as an integer and presented as a hexadecimal number (with lowercase letters).
X - the argument is treated as an integer and presented as a hexadecimal number (with uppercase letters).
%c  ascii
%d decimal
%b binary
%o octal
%x hex
%X hex
%f F float
%s string
%e E scientific
%g G 1.2e+5
%u unsigned decimal
