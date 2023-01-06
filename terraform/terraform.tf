terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.49.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.14.0"
    }
  }
  required_version = ">= 1.0"
  # backend "s3" {
  #   bucket = "terraform-tfstate-s3-bucket"
  #   key = "eks-fargate"
  #   region = "us-east-1"
  #   profile = "default"
  # }
}
#
