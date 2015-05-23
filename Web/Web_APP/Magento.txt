Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-08-22T10:17:35+08:00

====== Magento ======
Created Friday 22 August 2014

the Magento team shares this world view and has created a more abstract MVC pattern that looks something like this.

1. A URL is intercepted by a single PHP file
2. This PHP file instantiates a Magento application
3. The Magento application instantiates a Front Controller object
4. Front Controller instantiates any number of Router objects (specified in global config)
5. Routers check the request URL for a “match”
6. If a match is found, an Action Controller and Action are derived
7. Action Controller is instantiated and the method name matching the Action Name is called
8. This action method will instantiate and call methods on models, depending on the request
9. This Action Controller will then instantiate a Layout Object
10. This Layout Object will, based on some request variables and system properties (also known as “handles”), create a list of Block objects that are valid for this request
11. Layout will also call an output method on certain Block objects, which start a nested rendering (Blocks will include other Blocks)
12. Each Block has a corresponding Template file. Blocks contain PHP logic, templates contain HTML and PHP output code
13. Blocks refer directly back to the models for their data. In other words, the Action Controller does not pass them a data structure

1. handle = frontName+actionController+actionMethod

2. $_current_url=Mage::helper('core/url')->getCurrentUrl();

3.$_catogery_path=Mage::registry('current_catogery')->getPath();
	 $this->loadLayout(); $this->getLayout()->getBlock();$this->renderLayout();
	removeLinkByUrl(), addLink,
	<?php echo $this->getLayout()->createBlock(‘cms/block’)->setBlockId('order_form')->toHtml() ?> 
 type='page/template_links'  -> setTtile(block), addLink(title,url,param)

getSingleton, register,unregister,getModel,getBlock,getHelper,registry,unregister,

4.areas includes:

 
website admin, store frontend, crontab, install, webapi rest, webapi soap.

namespace_Module_classType_className
Mage_Customer_Model_Group
namespace preventing collisions
Module collections  of source code and config files
class type Model,singleton,block,helper
Name describing intention of use
2. main handles
3. default
4. STORE_bare_us
5. THEME_frontend_default_default
6. helloworld_index_index
7. customer_logged_out

7. Models
active-record-like/one-object-one-table
EAV
Model collections are  that individual magento model instances

8.REINSTSALL modules
   go to table core_resource and modified the core_resource version number.
