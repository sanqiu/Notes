Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-08-26T09:33:27+08:00

====== Css ======
Created Tuesday 26 August 2014

####Difference####
- b is a style, strong is semantic, meaning additional info like  lower tone in programs for blind, behaving in style a bold.
- i is a style, em is semantic, meaning should be emphasized. behaving in style a italic
== selectors ==
-  Universal  *
-  Type selector h1, p
-  id selector
-  class selector
-  child selector  .class > #id
-  descendent selector .class #id
-  adjacent sibling selector .class+#id ## the first sibling id of class
-  general siblings selector .class~#id        ##all sbling #id of .class

img

== Horizontal centering ==
``{margin: 0 auto;}``

== Vertical centering ==
> {position:absolute; top:50%; height:500px ; margin-top:-250px;}

== Fluid images ==
> img {width: 100%;  height:100%;}

== 3D button ==
`.button {border: 1px solid; border-color:  #1 #2 #3 #4;}`

`box-shadow {h-shadow v-shadow blur color;} {box-shadow: 10px 10px 5px #888888;}`
`text-shadow {}``

== Font shorthand ==
`body { font: font-style font-variant font-weight font-size line-height font-family; }`

== Multi-class to an HTML element ==
Round corners
`.class {border-radius: 5px; [[-webkit-border-radius: 5px;]] -moz-border-radius:5px;}`
`.class {border-top-radius: 5px; -webkit-border-left-radius: 5px; -moz-border-radius-top-left: 5px;}`

== Hyperlink style ==
a:link, a:visited, a:hover, a:active

== Clearing float ==
{clear:both;}

== Conditional comment ==
<!--[if IE]><![endif]-->
<!--[if IE 6]><![endi]-->
<!--[if gt/lt/gte/lte IE 6]><![endif]-->
<!--[if IE]> 
<link rel="stylesheet" type="text/css" href="ie-stylesheet.css" />
< ![endif]-->

== Base Font ==
body{font-size:62.5%;}## browser default is 16px, so 10/16=62.5%
h1 {font-size: 2.4 em;} ## 10px X 2.4=24px

== Drop caps ==
p:fist-letter {display:block; margin:5 5 0 0; flat:left; 	color:red; font-size:1.2 em; background:#ddd;}

== Outline ==
{outline:none;} 

== background padding ==
{background-position:10px 10px;|| 50% 50%;}
Li image
ul li {background:url() repeat:none position:0 0.5em; }
Hover to swap back-img
.class:hover {background-img:url; position:5px 10px;}

== Transparency ==
{opacity:0.5}

== Nth child ==
ul li:nth-child(3n+1) { }

== Prevent line break ==
h1 {white-space: no-wrap;}

== Replace text with image ==
h1{text:indent:-999px;background-image:url no-repeat;width: height: ;}
input:focus  !important

== Media Type	Description ==
all	Used for all media type devices
aural	Used for speech and sound synthesizers 电子发声器
braille	Used for braille tactile feedback devices 老式打印机
embossed	Used for paged braille printers
handheld	Used for small or handheld devices
print	Used for printers
projection	Used for projected presentations, like slides
screen	Used for computer screens
tty	Used for media using a fixed-pitch character grid, like teletypes and terminals
tv	Used for television-type devices

/* Smartphones (portrait and landscape) ----------- */
@media only screen 
and (min-device-width : 320px) 
and (max-device-width : 480px) {
/* Styles */
}

/* Smartphones (landscape) ----------- */
@media only screen 
and (min-width : 321px) {
/* Styles */
}

/* Smartphones (portrait) ----------- */
@media only screen 
and (max-width : 320px) {
/* Styles */
}

/* iPads (portrait and landscape) ----------- */
@media only screen 
and (min-device-width : 768px) 
and (max-device-width : 1024px) {
/* Styles */
}

/* iPads (landscape) ----------- */
@media only screen 
and (min-device-width : 768px) 
and (max-device-width : 1024px) 
and (orientation : landscape) {
/* Styles */
}

/* iPads (portrait) ----------- */
@media only screen 
and (min-device-width : 768px) 
and (max-device-width : 1024px) 
and (orientation : portrait) {
/* Styles */
}

/* Desktops and laptops ----------- */
@media only screen 
and (min-width : 1224px) {
/* Styles */
}

/* Large screens ----------- */
@media only screen 
and (min-width : 1824px) {
/* Styles */
}

/* iPhone 4 ----------- */
@media
only screen and (-webkit-min-device-pixel-ratio : 1.5),
only screen and (min-device-pixel-ratio : 1.5) {
/* Styles */
}

@media only screen and (max-device-width: 568px) and (-webkit-min-device-pixel-ratio: 0) 

@media (-webkit-min-device-pixel-ratio: 2), (min--moz-device-pixel-ratio: 2), (-o-min-device-pixel-ratio: 4 / 2), (min-device-pixel-ratio: 2), (min-resolution: 192dpi), (min-resolution: 2dppx) 
A320 A420 A479 I480 A499 I500 A520 A530 A599 I600 A620 A670 A770 I771 A799 A850 A870 I915 I960 A979 I980 A1000 I1126 A1199 A1279

== Transition ==
transition: <property:css selector> <duration:seconds> <timing-function:ease,linear,steps,steps-end(4,end)> <delay:seconds>;
div.box {width 2s;height 2s linear 4s;}

== Transform ==
transform:none, matrix(6 values), scale(1.5,2), rotate(190deg), rotateX(180deg), rotateY(90deg), skew(10deg,10deg), translate(10px,20px)
#mydiv{transform: translate(10px,20px); }
{text-transform:uppercase;lowercase;capitalize;}

== Circle ==
.circle {width:300px;height:300px; border-radius:150px;-moz-border-radius;}
Tooltip
<a class='tooltip' href="">Tooltip Link<span>content</span></a>
a.tooltip {position:relative;}
a.tooltip span {width:200px;height:20px;display:none;}
a.tooltip:hover span {position:absolute; display:inline;}
Fixed Header
header {position: fixed }

===== Pseudo Classes/Elements =====
:active
:checked
:default
:dir()
:disabled
:empty
:enabled
:first
:first-child
:first-of-type
:fullscreen
:focus
:hover
:indeterminate
:in-range
:invalid
:lang()
:last-child
:last-of-type
:left
:link
:not()
p:nth-child() ## the nth p element.  
:nth-last-child() 
:nth-last-of-type()
:nth-of-type()
:only-child
:only-of-type
:optional
:out-of-range
:read-only
:read-write
:required
:right
:root
:scope
:target
:valid
:visited
box-sizing:content-box|| padding-box || border-box :weather the padding and the border should be part of with.
