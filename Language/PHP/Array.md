Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-08-31T08:28:41+08:00

====== Array ======
Created Sunday 31 August 2014

== define ==
$price = array(, , , , );
$price -= array();
$price = [, , , , ,]

== adding ==
$price[] = "",
$price['banana']= 5;
array_push($array,''banana' =>5, 'pear'=>6)

== Multi-dimension ==
$value = $array[2][0];

== Extracting to var ==
list($var1,,,,,$var2,...) = $array; ##skip

== extract() function auto turn their keys into variable names. ==
compact() function auto turn var names into array keys $a = compact("1","2","3") ##1 2 3  are variable names without $

== Array slicing ==
$people = array_slice($array,$off_set,length)

== Array chunks ==
$rows =array_chunk($array,num) chunk $array into num chunks

== Array keys and values ==
$keys = array_keys($array); $values=array_values($array);

== check existence ==
if (array_key_exits(key,$array) ) {   }  ##check value is existed and return true or fale
if ($person['name']) {    }  ## dont check values' existence and return boolean
if (isset($array['name'])) {   }   ##check value's existence and return true or null

== Array splice ==
##array remove or inserting
$array = array_splice($array,start,length,replacement) ##when length is 0 , the replacement will be insert as first Nth.

== Foreach ==
foreach ($var as $val) {  }
foreach ($var as $key => $val) {   }

== callable ==
array_walk($array,$callable)
array_reduce($array,$callable) ##returns **single** value

== Array search ==
in_array("term",$array,strict) ##faster than loops ##returns true or false
array_search("term",$array) ## return the key's name
