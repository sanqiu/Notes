Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-09-29T11:19:57+08:00

====== Samples ======
Created Monday 29 September 2014
http://www.68ecshop.com/goods-586.html#com_b
<script type="text/javascript">
var obj11 = document.getElementById("com_b");
var top11 = getTop(obj11);
var isIE6 = /msie 6/i.test(navigator.userAgent);
window.onscroll = function(){
	var bodyScrollTop = document.documentElement.scrollTop || document.body.scrollTop;
	if (bodyScrollTop > top11){
		obj11.style.position = (isIE6) ? "absolute" : "fixed";
		obj11.style.top = (isIE6) ? bodyScrollTop + "px" : "0px";
	} else {
		obj11.style.position = "static";
	}
}
function getTop(e){
	var offset = e.offsetTop;
	if(e.offsetParent != null) offset += getTop(e.offsetParent);
	return offset;
}
</script>

##Console API##
- console.assert(expression, object) :: if expression is false then log the $obj
- console.dir()
- console.dirxml()
- console.log(), console.error(), console.info()
- formatter: %s string, %d int, %O js object
- $_ returns the mostly evaluated expression
- $0, $1,$2,$3, $4  returns the mostly selected dom element
- $() == document.querySelector(); $$() == document.querySelectorAll()
- clear(), copy(), debug(funcName), undebug(fn),
- dir(obj), console.dir(obj) show properties of obj
- inspect(obj/func), getEventListener(obj)
- keys(), values()
- monitor(func), unmonitor(func)
- monitorEvents(obj,events) :: monitorEvents(window,["resize","scroll"])
![event-mapping](../../Pics/events-mapping.png "Event Mappping")
- table(array)


**将阿里巴巴的关键词导出**
```javascript
var container = $x('//*[@id="J-keyword-table"]/tbody/tr/td/a[@data-keyword]');
var aLength = container.length;
var div = document.querySelector('.ui-pagination');
for (i = 0; i < aLength; i++) {
  	div.innerHTML += '<br>'+container[i].getAttribute('data-keyword');
	 }
```


```javascript
var kwContainer = $x("//*[@id='J-keywords-content']/tr/td[1]");
var kwLength = kwContainer.length;
var div = document.querySelector("#J-pagination");
for (i=0; i< kwLength; i++) {
	 div.innerHTML += '<br>'+ kwContainer[i].textContent;
	}
```

