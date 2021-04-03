terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
//  shared_credentials_file = "~/.aws/aws-personal-credentials"
  profile = "aws-personal"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "helloworld" {
  ami           = "ami-096cb92bb3580c759"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}