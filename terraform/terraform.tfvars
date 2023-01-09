region                                  = "us-east-1"
cluster_version                         = "1.24"
cluster_name                            = "test"
vpc_name                                = "main-eks-vpc"
vpc_cidr_block                          = "10.0.0.0/16"
vpc_enable_dns_support                  = true
vpc_enable_dns_hostnames                = true
private-a-subnet-cidr                   = "10.0.0.0/19"
private-b-subnet-cidr                   = "10.0.32.0/19"
public-a-subnet-cidr                    = "10.0.64.0/19"
public-b-subnet-cidr                    = "10.0.96.0/19"
aws_eks_cluster_endpoint_private_access = true
aws_eks_cluster_endpoint_public_access  = false
#
tags = {
  project           = "Proof of Concept"
  stack             = "POC"
  environment       = "DEV"
  technology        = "kubernetes"
  contact_email     = "no.one@mydomain.net"
  terraform_managed = "true"
}
#
