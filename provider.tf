terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket  = "blobba"
    encrypt = true
    key     = "terraform.tfstate"
    region  = "us-east-1"
  }
}

provider "aws" {
  access_key = var.AWS_SECRET
  secret_key = var.AWS_ACCESS_KEY
  region = "us-east-1"
}
