# Main Objectiove 

The CEO invited you to the office the next day to understand more about the company and what you can expect for the next few weeks.

So, you get into office and the CEO mentions that you will be building a new website for them using AWS. And to build the website, you need a good foundation that embraces all the needs of the company. He then introduced you to Sam, the network lead.

This section is going to concentrate on the needs of KoffeeLuv from a network perspective, so you can build the network from scratch.

# Project Outline

Sam and you walk into a conference room, where he shares more about the company and about himself. He has been in the industry for the last 19 years and had recently joined the company, just like you. And he had some ideas that he wanted implemented for this new site. His main goal was to make sure that the design of the network allowed for future changes and yet it was very secure.

He then shared a network diagram with you. To be successful, you will need to build a custom vpc with 172.16.0.0/16 cidr range. The network design will have three different layers – a public subnet range, an app layer and a database layer. To read and understand more about the three tier architecture check out the article within the references section.

Though the application itself is not yet built, Sam insisted that the network infrastructure must support the ability to deploy an application into its private subnets. Within the public subnets, you had to also implement bastion hosts (EC2 instances that serve as jump boxes) in each of the availability zones. Only these hosts had the ability to connect to the application instances as shown in the picture below, using ssh protocol. And currently, the design will have nothing implemented in the DB layer, but from a design perspective, it must be still built out. For added flexibility, he also mentioned that among each of these layers a CIDR range must be skipped (just as it is shown in the picture). This will give the company to use this CIDR range in the future if needed.

Sam finally gave the heads up that before submitting back a sample implementation for these requirements, to test it thoroughly. To test connectivity using SSH, he said that you must deploy an EC2 instance in the app layer and one in the public subnet to serve as bastion hosts, adjust the security as needed, and then finally verify that you are able to make updates to the app’s private EC2 instances. Once done he asked you to commit all code into your own GitHub repository for approval.

# Workflow 

**Expectations**

* Create a terraform script that depicts everything laid out in the network diagram by Sam. Make sure that you build bastion hosts in the public subnets and the instances for the application in the private subnets. Be aware that this solution will need you to create an internet gateway and configure routing for the public and private subnets.
* Test the solution by connecting to the bastion host within an availability zone using ssh. Then jump into one of the application boxes and run an update command (sudo yum update command for linux based OS’s)
* Commit code when successful and submit changes

# Deliverable

The deliverables for this milestone are to create a Terraform script that depicts everything laid out in the network diagram by Sam, test the solution by connecting to the bastion host within an availability zone by using SSH, and then jumping into one of the application boxes and running an update (sudo yum update for Linux based OSes), and finally commit code when successful and submit changes.

Upload a link to your deliverable in the Submit Your Work section and click submit. After submitting, the Author’s solution and peer solutions will appear on the page for you to examine.

# Importance to project

VPC:

* Identify how and when to create a private custom VPC 
* Learn how to destroy a VPC
* Learn how to automate using Terraform
* Understand terraform init, terraform plan, terraform apply and Terraform destroy commands

Subnets:

* Learn how to create public subnets
* Learn when to use public vs private subnets
* Learn how to configure them based on your needs 
  
Internet Gateway and Routing

* Learn how to create an internet gateway
* Configure Routing
* Knowing when to use the internet gateway

Bastion Hosts:

* Creating EC2 instances used as jump boxes
* Associating EC2 instances to subnets
* Enabling public IP’s for the bastion hosts

NAT Gateways:

* Learn how to create NAT gateways
* Learn the usage of Elastic IP’s and how to associate them to a NAT
* Configuring Route Table and its associations

Bastion Hosts and EC2 instances:

* Understanding how to create app server instances while maintaining high security by placing them in private subnets.
* As best practice allowing only bastion hosts to be able to login into the app instances for updates and blocking others.
* Performing the classical updates on the private instances in a secure manner

Overall:

* You simulated a full 3-tier architecture
* You practiced how to create a whole network and all the important pieces
* Hands-on building security and use good practices while at it. 

# Summary 

* Modules can be either used for code organization or code reuse. The source may be either a local directory (e.g. /modules/<module_name>) or a remote location such as the Terraform module registry.
* As directed by HashiCorp, it is best practice that each module has at least the following three files: _main.tf_, variables.tf and outputs.tf.
* The root module serves as the entry point for your project, thus necessitating three additional files: a variables definition file (terraform.tfvars), versions.tf and providers.tf. The variables definition file is used to set common configuration for top-level modules.
* Terraform projects should be componentized into logical groupings of systems based on the principle of least privilege. Pass in only the minimum amount of data that a module will need to do its job, no more, no less.
* All data passed between modules will either be bubbled up or trickled down. Optimizing the way data flows between modules be reducing the distance between where data is produced and where it is consumed will help you to organize your code better.