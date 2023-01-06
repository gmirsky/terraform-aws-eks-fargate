region                   = "us-east-1"
cluster_version          = "1.24"
cluster_name             = "test"
vpc_name                 = "main-eks-vpc"
vpc_cidr_block           = "10.0.0.0/16"
vpc_enable_dns_support   = true
vpc_enable_dns_hostnames = true

#
tags = {
  project           = "Proof of Concept"
  stack             = "POC"
  environment       = "DEV"
  technology        = "kubernetes"
  contact_email     = "no.one@mydomain.net"
  terraform_managed = true
}
#
