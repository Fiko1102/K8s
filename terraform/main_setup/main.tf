terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.5"
    }
  }
  backend "s3" {
    bucket = "fikretmirzaev-terraform-devops2024"
    key    = "key_for_jenkins" #its not ssh key!!!
    region = "us-east-1"
  }
  required_version = ">= 1.3"
}

provider "aws" {
  region = "us-east-1"
}
