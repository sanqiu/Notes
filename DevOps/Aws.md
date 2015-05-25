Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-12-16T09:13:14+08:00

====== Aws ======
Created Tuesday 16 December 2014

aws must:

Content Limits
1 Domain 1.0: Monitoring and Metrics
	1.1 Demonstrate ability to monitor availability and performance
	1.2 Demonstrate ability to monitor and manage billing and cost optimization processes
2 Domain 2.0: High Availability
	2.1 Implement scalability and elasticity based on scenario
	2.2 Ensure level of fault tolerance based on business needs
3 Domain 3.0: Analysis
	3.1 Optimize the environment to ensure maximum performance
	3.2 Identify performance bottlenecks and implement remedies
	3.3 Identify potential issues on a given application deployment
4 Domain 4.0: Deployment and Provisioning
	4.1 Demonstrate the ability to build the environment to conform with the architected design
	4.2 Demonstrate the ability to provision cloud resources and manage implementation automation
5 Domain 5.0: Data Management
	5.1 Demonstrate ability to create backups for different services
	5.2 Demonstrate ability to enforce compliance requirements
	5.3 Manage backup and disaster recovery processes
6 Domain 6.0: Security
	6.1 Implement and manage security policies
	6.2 Ensure data integrity and access controls when using the AWS platform
	6.3 Demonstrate understanding of the shared responsibility model
	6.4 Demonstrate ability to prepare for security assessment use of AWS
7 Domain 7.0: Networking
	7.1 Demonstrate ability to implement networking features of AWS
	7.2 Demonstrate ability to implement connectivity features of AWS 



aws  [options] command subcommand  [parameters]

options:
	 --debug [boolen]
	--output [json|text|table]
	--profile string
	--region 
	--color on|off|auto
	
services:
	help 
	configure [list|get|set]
	ec2
	deploy
	logs
	support

aws ec2 help :
	 o run-instances
	
		   o start-instances
	
		   o stop-instances
	
		   o terminate-instances
	
		   o unassign-private-ip-addresses
		o authorize-security-group-egress
		
		   o authorize-security-group-ingress
		 **authorize-security-group-ingress**
					  [--dry-run | --no-dry-run]
					  [--group-name <value>]
					  [--group-id <value>]
					  [--ip-permissions <value>]
					  [--protocol <value>]
					  [--port <value>]
					  [--cidr <value>]
					  [--source-group <value>]
					  [--group-owner <value>]
					  [--cli-input-json <value>]
					  [--generate-cli-skeleton]

		o delete-security-group
		 o describe-security-groups
		o revoke-security-group-egress

		   o revoke-security-group-ingress
	
		   o unmonitor-instances
		   o reboot-instances
		   o get-console-output
	
		   o get-password-data
		   o describe-reserved-instances-offerings
	
		   o describe-route-tables
	
		   o describe-security-groups
	
		   o describe-snapshot-attribute
	
		   o describe-snapshots
	
		   o describe-spot-datafeed-subscription
	
		   o describe-spot-instance-requests
	
		   o describe-spot-price-history
	
		   o describe-subnets
	
		   o describe-tags
	
		   o describe-volume-attribute
	
		   o describe-volume-status
	
		   o describe-volumes
	
		   o describe-vpc-attribute
	
			o describe-bundle-tasks

	   o describe-conversion-tasks

	   o describe-customer-gateways

	   o describe-dhcp-options

	   o describe-export-tasks

	   o describe-image-attribute

	   o describe-images

	   o describe-instance-attribute

	   o describe-instance-status

	   o describe-instances

	   o describe-internet-gateways

	   o describe-key-pairs

	   o describe-network-acls

	   o describe-network-interface-attribute

	   o describe-network-interfaces

	   o describe-placement-groups

	   o describe-regions

	   o describe-reserved-instances

	   o describe-reserved-instances-listings

	   o describe-reserved-instances-modifications
	   o delete-route

	   o delete-route-table

	   o delete-security-group

	   o delete-snapshot

	   o delete-spot-datafeed-subscription

	   o delete-subnet

	   o delete-tags

	   o delete-volume

	   o delete-vpc

	   o delete-vpc-peering-connection

	   o delete-vpn-connection

	   o delete-vpn-connection-route

	   o delete-vpn-gateway

	   o deregister-image

	   o describe-account-attributes

	   o describe-addresses

	   o describe-availability-zones
----------------------------------------------------------
|                     DescribeRegions                    |
+--------------------------------------------------------+
||                        Regions                       ||
|+-----------------------------------+------------------+|
||             Endpoint              |   RegionName     ||
|+-----------------------------------+------------------+|
||  ec2.eu-central-1.amazonaws.com   |  eu-central-1    ||
||  ec2.sa-east-1.amazonaws.com      |  sa-east-1       ||
||  ec2.ap-northeast-1.amazonaws.com |  ap-northeast-1  ||
||  ec2.eu-west-1.amazonaws.com      |  eu-west-1       ||
||  ec2.us-east-1.amazonaws.com      |  us-east-1       ||
||  ec2.us-west-1.amazonaws.com      |  us-west-1       ||
||  ec2.us-west-2.amazonaws.com      |  us-west-2       ||
||  ec2.ap-southeast-2.amazonaws.com |  ap-southeast-2  ||
||  ec2.ap-southeast-1.amazonaws.com |  ap-southeast-1 
