Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-08-22T16:29:52+08:00

====== PHP ======
Created Friday 22 August 2014

-f file.php
-r 'code'
-n no ini
-d define key=value in php.ini
-e extended info for debuger and profiler
-i info php
-l syntax check
-m show compiled modules
-s highlight output html syntax
-S addr:poprt built-in web server
-v version
-z load zend extension file
--rf function
--rc class
--rz info about zend extensoin
--re info aobout extension
--ri config info  about extension
--ini init file path
**ob_end_flush ## output buffer**


<script language="php">
echo "hello world";
</script>
<?=   echo "hello world"; ?>
phpinfo();

eight types of data:
scalar: integer, floting-point,strings,boolean
compound(collection): arrrays,objects
special: resource ,NULL`
is_float()  alias is_real()
$back =& $white : black act as a alias of white  //unset($alias)
by default , global functions **cant be accessed from within the function**
c-r =   insert arithmetic
c-v {code}   //c-v u{hexcode} code=index of special character
