terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket = "peudhvi-remote.state"
    key    = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "prudhvi-locking"
  }
}

provider "aws" {
  region = "us-east-1"
  # Configuration options
}