# Intro 

**Project Page:** Automating Infrastructure for an E-commerce Website with Terraform and AWS. 

# Mentors 
Lionel Pulickal works as a Cloud Infrastructure Analyst and has 23+years of experience in IT. He is experienced in creating solutions for a variety of business domains that include Network Management, Second Mortgage, Financial, Entertainment, Supply Chain, eCommerce and Insurance. He has worked for many big companies and also startups.

# about this liveProject

Koffee Luv, Inc. is one of the new coffee companies that has gone viral in the recent past. Since they hit the market, they have been growing in leaps and bounds. It’s time for the company to take some big measures. Measures that capture the market and make their coffee products available to everyone.

When they started, they were just a small coffee shop. Today they sell all kinds of coffee products including K-cups, containers, coffee machines, and filters other than their well-known coffee blends from their stores. To expand their sales and marketing, they hired a new CEO. The CEO in his first few months of being hired, decided to create a new IT department. He also decided to build the complete infrastructure to support a website that can serve everything their company has to offer. He felt that along with the opportunities that the cloud offers, it would increase sales and take his company to the next level.

So, Koffee Luv, Inc. started advertising jobs to build their dream IT team. You saw this opportunity and applied…

And you, yes you! got this job!

In one of your initial visits, you had a chance to talk to the CEO. You learn that the CEO has a grand vision for the company and that he has a sound architectural background. After this visit, you figured that to do well at this job, the CEO tasked you to start learning about the environments of Terraform and AWS, as you will be creating a site using them!

You are excited. This is a wonderful chance to grow along with the company and do something really cool with Terraform. You have just a few weeks to get some practice. You don’t know where to start. You read a few books, but it doesn’t replace real experience. You don’t know what to expect and more importantly know when to use the right tools and why.

As every story that starts well, you want to gain that experience badly. You decide to create this environment for yourself and learn everything you need to succeed in the real world.

Terraform is an open source tool created by HashiCorp. It helps to create and provision a whole datacenter’s infrastructure in the cloud. Terraform supports several cloud providers such as Amazon Web Services (AWS), Microsoft Azure, IBM Cloud, Google Cloud Platform (GCP), and more. The complete list of providers can be seen here. For learning Terraform we must use a cloud provider and for this live project we have chosen one of the oldest and most popular one of them – AWS!

# Koffee Luv, Inc. is one of the new coffee companies that has gone viral in the recent past. Since they hit the market, they have been growing in leaps and bounds. It’s time for the company to take some big measures. Measures that capture the market and make their coffee products available to everyone.

When they started, they were just a small coffee shop. Today they sell all kinds of coffee products including K-cups, containers, coffee machines, and filters other than their well-known coffee blends from their stores. To expand their sales and marketing, they hired a new CEO. The CEO in his first few months of being hired, decided to create a new IT department. He also decided to build the complete infrastructure to support a website that can serve everything their company has to offer. He felt that along with the opportunities that the cloud offers, it would increase sales and take his company to the next level.

So, Koffee Luv, Inc. started advertising jobs to build their dream IT team. You saw this opportunity and applied…

And you, yes you! got this job!

In one of your initial visits, you had a chance to talk to the CEO. You learn that the CEO has a grand vision for the company and that he has a sound architectural background. After this visit, you figured that to do well at this job, the CEO tasked you to start learning about the environments of Terraform and AWS, as you will be creating a site using them!

You are excited. This is a wonderful chance to grow along with the company and do something really cool with Terraform. You have just a few weeks to get some practice. You don’t know where to start. You read a few books, but it doesn’t replace real experience. You don’t know what to expect and more importantly know when to use the right tools and why.

As every story that starts well, you want to gain that experience badly. You decide to create this environment for yourself and learn everything you need to succeed in the real world.

Terraform is an open source tool created by HashiCorp. It helps to create and provision a whole datacenter’s infrastructure in the cloud. Terraform supports several cloud providers such as Amazon Web Services (AWS), Microsoft Azure, IBM Cloud, Google Cloud Platform (GCP), and more. The complete list of providers can be seen here. For learning Terraform we must use a cloud provider and for this live project we have chosen one of the oldest and most popular one of them – AWS!

## Techniques employed
The liveProject walks through various tasks to build a site from scratch.

* Building a network layout from scratch
* Building and Deploying manually on ECS using Docker
* Deployment automation to ECS cluster using CI/CD concepts
* DynamoDB Backup and Replication using Lambdas

## Project outline
This liveProject is broken into multiple 5 milestones/ steps

**Step One: Local Environment Setup**

This is a pre-requisite for all steps to follow.

**Step Two: Build a Network Layout from Scratch**

Here you will build a 3-tier network from scratch. This is an important step as it will be the foundation for building all the resources in the subsequent steps.

**Step Three: Deploy a Microservice Application on ECS**

This is a big section and has multiple moving parts. Here you will build a basic website (doesn’t matter if its even a hello world site) and create a docker image. This will be then hosted into ECR. Then you will create an ECS application hosting this website over a dns name (for example http://koffee-luv-alb-1735863027.us-east-1.elb.amazonaws.com/KoffeeLuv)

**Step Four: Deploying to the ECS Cluster**

The previous step had manual docker image creation aspects. This step will fully automate what was left off in the previous section using CI/CD concepts.

**Step Five: Working with Databases and Replication**

While migrating data has multiple options and are generally slow. This takes on a different approach using event driven architectures. It gives you a chance to use lambdas and streams. It also touches on a common topic of replication.

## Prerequisites

This liveProject is for developers and cloud engineers with a basic understanding of Cloud essentials, networking basics, database basics, and backups.

* TOOLS 
  * Logical Reasoning and Application
  * Basics of AWS
  * Basics of Terraform
  * Basics of networking
    
## Recommended resources
These are resources directly referenced throughout the liveProject and can directly impact or expand your understanding of the liveProject’s content.

* Terraform in Action by Scott Winkler 
* Amazon Web Services in Action, Second Edition by Michael Wittig and Andreas Wittig 
* Learn Amazon Web Services in a Month of Lunches by David Clinton
* AWS Lamba in Action by Danilo Poccia
* Serverless Applications with AWS liveVideo by Marcia Villalba. 

We provide additional resources and tutorials throughout the project. Feel free to use any resources you can find to complete the project. If you run into problems or have questions, refer to the [Frequently Asked Questions (FAQs)](https://liveproject.manning.com/module/107_8_1/automating-infrastructure-for-an-e-commerce-website-with-terraform-and-aws/faqs/faqs?) section.

# Local Environment Setup 

## AWS Account Set up 

# Workflow 

Set up Billing Alarm 





