terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "test_server_ec2" {
  ami           = "ami-09a9858973b288bdd"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

