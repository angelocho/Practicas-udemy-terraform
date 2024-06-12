terraform {
  # backend "s3" {
  #   region = "us-east-1"
  #   bucket = "tfstate-njxcm"
  #   key    = "terraform.tfstate"
  # }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.52.0"
    }
  }
  required_version = "~>1.8.5"
}

provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
  default_tags {
    tags = var.tags
  }
}