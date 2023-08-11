terraform {
  required_version = "1.5.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.3.0"
    }
  }
}

provider "aws" {
  region  = "ap-northeast-1"
  profile = "terraform"
}

module "iam" {
  source = "./modules/iam"
  user_name = "s3-push-user"
  bucket_arn = module.s3.arn
}

module "s3" {
  source = "./modules/s3"
  bucket_name = "example-s3-terraform-bucket"
}
