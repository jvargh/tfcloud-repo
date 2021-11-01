terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
locals {
  tags = {
    Name = "test"
  }
}
provider "aws" {
  region = "us-east-1"
}
