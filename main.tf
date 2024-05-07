terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}


resource "aws_instance" "app_server2" {
  ami           = "ami-023e152801ee4846a"
  instance_type = "t2.micro"
  subnet_id = "subnet-07fab312527b3d14d"

  tags = {
    Name = "VSahgal34AppServerInstance"
  }
}

