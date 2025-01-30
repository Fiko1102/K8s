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
    bucket = "fikretmirzaev-terraform-devops2024" # use your S3 bucket name
    key    = "k3s_worker/infra.tfstate"
    region = "us-east-1"
  }
  required_version = ">= 1.3"
}

provider "aws" {
  region = "us-east-1"
}
