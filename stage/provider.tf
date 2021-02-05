terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.24.1"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}