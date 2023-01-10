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

resource "aws_instance" "app_server" {
  ami           = "ami-03f8756d29f0b5f21"
  instance_type = "t2.micro"
  key_name = "naves-wsl"
  tags = {
    Name = "Primeira instancia"
  }
}