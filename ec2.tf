terraform {
require_providers {
  aws = {
  source = "hashicorp/aws"
  version = ">=3.34.0,<=3.35.0"
  }
  }
  }
  
  provider "aws" {
  region = "us-east-1"
  profile = "default"
  }
  
  resource "aws_instance" "my-first-ec2" {
  ami   = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"
  tags = {
    Name = "myec2-1"
    Owner = "ilgar"
    }
    }
  
