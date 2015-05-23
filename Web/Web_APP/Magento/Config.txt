Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-09-13T09:20:49+08:00

====== Config ======
Created Saturday 13 September 2014

== 1. Layout ==
　<layout version="1.0">
<catalog_product_view>
<update handle="handle_name">
<reference name=”root”>
	<block name="content">
		<action method=”addBodyClass”><className>account-page</className> </action>
		<action method="setElementClass"><value>std</value></action>
	   <block type="cms/block" name="footer-shopper">
		<action method="setBlockId"><block_id>footer-shopper</block_id></action>
	   </block>
	</block>
</reference>
</ayout>
</catalog_product_view>

== 2.Rewrite ==
 Rewrite Core
<blocks/models/helpers> 
  	<moduleName>
		<rewrite>
  			<className>class_file_path</className>
		</rewrte>
	</moduleName>
</blocks/models/helpers> 
eg.
{
<helpers>
	<customer>
		<rewrite>
			<data>Excellence_Test_Helper_Data</data>
		</rewrite>
	</customer>
</helpers> 
}
# Controllers' rewrite
<global/frontend>
	<rewrite>
		<moduelName> <!-- 这可以是一个唯一的 ID -->
			<from><!--[CDATA[#^/checkout/cart/#]]--></from>  <!-- 你想被重写的URL-->
			<to>/test/checkout_cart/</to>  <!-- 重写后的URL -->
		</moduleName>
	</rewrite>
</global/frontend>

== 3./etc/config.xml ==
<config>	
	<modules>
	</modules>

	<frontend>
		<routers>
		</routers>
		<events>
			<observers>
			</observers>
		</events>
		<translate>
		</translate>
		<layout>
		</layout>	
	</frontend>

	<global>
		<resources>
		</resources>
		<template>
		</template>		
	</global>
	<default>
	</default>
</config>
