# Objective

The key to being successful in your automation journey is to first get your local machine setup. So, let’s cover the basics first and make sure that we do it right.

# Workflow

## Download and Install Terraform.

* If you haven’t done this already or this is your first time follow the official instructions given by HashiCorp themselves at the site.
* Setup an AWS account.

**Note: As a word of caution, we will try our best to use the free tier. And to avoid expenses, we will always destroy our resources as soon as we are done using them.**

Now, it’s time to create a new AWS account setup. If you already have an account, skip this step. https://aws.amazon.com/premiumsupport/knowledge-center/create-and-activate-aws-account/.

## Choosing a region.

* Depending on where you stay, I would normally say choose the region that is closest to you. But if you really want to save some money, I would say that this strategy doesn’t work always for a few reasons.

** Sometimes the region close to you may not support the feature that we are targeting and
** N. Virginia sometimes may be cheaper than the region that is closest to you. For more details read this article. I would like you to remain with N. Virginia region, followed by Ohio and then Oregon.

## Setting up a Billing Alarm

To set up a billing alarm, follow the steps given in the video AWS Free Tier Widget Explained.

## Creating an IAM user

Best practices mention that you must create a new user and give it administrator privileges. The first account that was registering with AWS is generally the root account and must never be shared with anyone or used on a daily basis. To create an IAM user visit the site.
Test driving an AWS account manually.

Before you begin to test drive terraform, it’s always good practice to do the steps manually so you can understand and visualize what automation brings to the table. To follow along we are going to build an EC2 instance, connect to it and then clean it up. If you are already comfortable with these steps, skip this step and move on to the next topic, otherwise visit the site to learn how to go about them.
Verify Terraform Setup

Now that you understand how it’s done manually, I think it’s time to get your hands wet and do this in Terraform. This is going to be the first step in your automation life. It will also validate that your installation was done correctly. For this verification step, I would like you to follow along the latest edition of the book Terraform in Action - Chapter 1, Unit 2, “Hello Terraform!”

## Deliverable 

Terraform in Action by Scott Winkler

The deliverable is a Terraform setup script uploaded into your own GitHub repository with public access. Only code that runs must be uploaded.

Note: The Terraform script must not contain any hard coding of users, credentials or profiles that was used. Only code that runs must be uploaded and submitted. Each time terraform releases a new version, the installation and setup process are the same.

## hello terraform 

### Writing Terraform Configuration

Terraform reads from configuration files to deploy infrastructure. To tell Terraform we want it to deploy an EC2 instance, we need to declare an EC2 instance as code. Let’s do that now. Start by creating a new file named main.tf, with the contents from Listing 1.1. The “.tf” extension signifies that it’s a Terraform configuration file. When Terraform runs it will read all files in the current working directory with a “.tf” extension and concatenate them together.

The EC2 instance code block is a kind of Terraform resource. Resources are the most prevalent and important element in all of Terraform. They are how Terraform provisions infrastructure, such as virtual machines, load balancers, NAT gateways, databases, and so forth. Resources are declared as HCL objects, with type resource and exactly two labels. The first label specifies the type of resource you want to create, and the second is the resource name. Name has no special significance and is only used to reference the resource within a given module scope (we will talk about modules and module scope in chapter 4). Together, the type and name make up the resource identifier, which is unique for each resource. Figure 1.7 shows the syntax of a resource block.

Each resource has inputs and outputs. Inputs are called arguments and outputs are called attributes. Arguments are passed through the resource and available as resource attributes, but there are also other attributes which you don’t set and which are only available after the resource has been created. These other attributes are called computed attributes and are calculated information, typically metadata about the resource itself. Figure 1.8 shows some of the arguments, attributes and computed attributes of an aws_instance resource.

Unlike resources, providers only have one label: name. Name is the official name of the provider as published in the provider registry (e.g. “aws” for AWS, “google” for GCP and “azurerm” for Azure). 

Providers don’t have outputs, only inputs. You configure a provider by passing in inputs, or configuration arguments, to the provider block. Configuration arguments will be things like servjce endpoint URL, region, provider version, and any credentials needed to authenticate against the API. Providers use the configuration arguments to configure all the resources underneath them. 

Usually you don’t want to pass secrets into the provider as plain text, especially when this code will later be checked into version control, so many providers have the ability to read environment variables or shared credential files to retrieve this secret information dynamically. If you are interested more in secrets management, I recommend reading chapter 12, which is where we cover this topic in great detail.

## Summary 

* Terraform is a declarative IaC provisioning tool. It can deploy resources onto any public or private cloud.
* Terrraform is: 1) a provisioning tool 2) easy to use 3) free and open source 4) declarative 5) cloud agnostic 6) expressive and extensible
* The major configuration elements of Terraform are resources, data sources and providers
* Code blocks can be chained together to perform dynamic deployments
* To deploy a Terraform project you first write configuration code, then configure providers and other input variables, terraform init, and finally terraform apply. Clean-up is done with terraform destroy.






