terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.95.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket         = "venky-state-prod"
    key            = "databases"
    region         = "us-east-1"
    dynamodb_table = "venky-locking-prod"
  }
}

provider "aws" {
  region = "us-east-1"
}