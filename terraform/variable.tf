variable "region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
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