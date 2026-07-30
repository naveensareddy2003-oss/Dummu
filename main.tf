terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Terraform-EC2" {
  ami           = "ami-0b6d9d3d33ba97d99"  
  instance_type = "t3.micro"
  key_name      = "winscp"

  tags = {
    Name = "Terraform-EC2"
  }
}
