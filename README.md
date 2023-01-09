# Terraform AWS EKS Fargate

## Objective

Build a AWS EKS Fargate cluster using Terraform to provision VPC, Subnets, IAM roles and policies, EKS, EFS, HPA, Ingress, ALB, IRSA, Kubernetes, Helm.

This repository is meant to be an advanced tutorial for provisioning resources with Terraform in AWS.

**DO NOT USE!** This is a work in progress.

## Terraform Commands

```sh
terraform init -upgrade
teraform fmt -recursive
terraform validate
terraform plan -out=tfplan
terraform apply "tfplan"
```

revision 0.0.1
