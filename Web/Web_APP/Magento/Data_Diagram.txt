Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-09-13T09:27:39+08:00

====== Data Diagram ======
Created Saturday 13 September 2014

模型层： 逻辑层，数据交互层

$Models = arrary(
	"simple model" => "object-table",
	"EAV model"    => "attribute-value"
)

== admin ==
admin_user: user name password

== api ==

== core/config ==
core_email_template; **core_config_data**; core_flag; core_resource;  cron_schedule; 

== core wensite ==
core_website;  cre_session; core_translation; core_store; sitemap;

== system-layout ==
core_url_rewrite; core_layout_update; cms_block; cms_page; design_change; 

== log ==
log_visitor; log_url; log_customer; 

== dataflow ==
pfofile; import; export; batch;

== catalog ==
catalog_index;
catalog_rule;
catalog_query;

== category ==
ctalog_category_index; catalog_catagory_flat; catalog_category_product_index;

== Product ==
tier_price;enabled_index;product_website;  product_link;

== catalog_ ==
**entity**

== data type ==
(grouped:datetime;int;text;varchar;decimal)

== product_ ==
**entity**

== ; data type ==
(grouped)(grouped:datetime;int;text;varchar;decimal)
Product inventory; options;super_attributes; bundle; downloadable;gallery; alert;

=== Customer ===
customer_group;newsletter;enttity; review; rating; 

== Eav ==
eav_type;eav_entity; eav_value; 

=== Sales ===
sales_rule; sales_order; sales_quote; sales_entity;

== Sales setup ==
gift; shipping; paypent;tax; checkout_agreement;
