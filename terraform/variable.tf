variable "region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
  sensitive   = false
}
#
variable "vpc_name" {
  type        = string
  description = "AWS VPC name"
  default     = "main"
  sensitive   = false
}
#
variable "vpc_cidr_block" {
  type        = string
  description = "AWS VPC CIDR block"
  default     = "10.0.0.0/16"
  sensitive   = false
}
#
variable "vpc_enable_dns_support" {
  type        = bool
  description = "Enable DNS support in the AWS VPC?"
  default     = true
  sensitive   = false
}
#
variable "vpc_enable_dns_hostnames" {
  type        = bool
  description = "Enable DNS hostname in the AWS VPC?"
  default     = true
  sensitive   = false
}
#
variable "cluster_name" {
  type        = string
  description = "EKS Cluster name"
  default     = "demo"
  sensitive   = false
}
#
variable "cluster_version" {
  type        = string
  description = "EKS Cluster Version"
  default     = "1.22"
  sensitive   = false
}
#
variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the resources"
  sensitive   = false
}
#
