terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.41.0"
    }
  }
}
provider "aws" {
  region  = "eu-north-1"
}

resource "aws_instance" "webserver" {
  ami           = "ami-0d74f1e79c38f2933"
  instance_type = "t3.micro"

  tags = {
    Name = "website"
  }
}