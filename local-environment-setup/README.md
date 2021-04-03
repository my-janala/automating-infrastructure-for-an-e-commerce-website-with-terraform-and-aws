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

The deliverable is a Terraform setup script uploaded into your own GitHub repository with public access. Only code that runs must be uploaded.

Note: The Terraform script must not contain any hard coding of users, credentials or profiles that was used. Only code that runs must be uploaded and submitted. Each time terraform releases a new version, the installation and setup process are the same.


