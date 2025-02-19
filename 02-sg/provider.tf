terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
backend "s3" {
  bucket ="expense-terraform-dev-remote-state"
  key="expense-terraform-dev-sg"
  region="us-east-1"
  dynamodb_table="expense-terraform-dev-remote-state-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

