terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    consul = {
      source  = "registry.terraform.io/hashicorp/consul"
      version = "2.14.0"
    }
  }
#     backend "s3" {
#     bucket = "terraform-backend"
#     key = "aws-fs-products/test/statefile.tfstate" #--> Mentioed in before_script section of .gitlab-ci.yml
#     dynamodb_table = "terraform-backend"
#     region = "eu-central-1"
#   }
}

provider "aws" {
  region   = "eu-central-1" 
}

provider "aws" {
  alias  = "target_account"
  region = "eu-central-1"  # Replace with your desired region for the second account

  assume_role {
    role_arn     = "arn:aws:iam::12345678:role/automationterraformcli"
    session_name = "session_target"
  }
}
