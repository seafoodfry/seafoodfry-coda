terraform {
  backend "s3" {
    bucket = "<create a bucket for your TF state>"
    key    = "<s3 object key for your TF state file>"
    region = "us-east-2"
    }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.5"
    }
  }

  required_version = "~> 1.8.4"
}

provider "aws" {
  region = "us-east-2"
}
