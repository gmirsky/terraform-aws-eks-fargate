output "cli_command_output" {
  value       = module.cli.result
  description = "Output from the AWS CLI command"
  sensitive   = false
}
#
output "aws_load_balancer_controller_role_arn" {
  description = "AWS load balancer ARN"
  value       = aws_iam_role.aws_load_balancer_controller.arn
  sensitive   = false
}
#
output "vpc_id" {
  value       = aws_vpc.main.id
  description = "AWS VPC id"
  sensitive   = false
}
#
output "vpc_arn" {
  value       = aws_vpc.main.arn
  description = "AWS VPC ARN"
  sensitive   = false
}
#
output "vpc_cidr_block" {
  value       = aws_vpc.main.cidr_block
  description = "AWS VPC CIDR block"
  sensitive   = false
}
#
output "tags" {
  value       = local.tags
  description = "consolidated common tags"
  sensitive   = false
}
output "private-a-subnet-cidr" {
  value       = aws_subnet.private-a.cidr_block
  description = "AWS subnet private A CIDR block"
  sensitive   = false
}
#
output "private-b-subnet-cidr" {
  value       = aws_subnet.private-b.cidr_block
  description = "AWS subnet private B CIDR block"
  sensitive   = false
}
#
output "public-a-subnet-cidr" {
  value       = aws_subnet.public-a.cidr_block
  description = "AWS subnet public A CIDR block"
  sensitive   = false
}
#
output "public-b-subnet-cidr" {
  value       = aws_subnet.public-b.cidr_block
  description = "AWS subnet public B CIDR block"
  sensitive   = false
}
#
output "private-a-subnet-id" {
  value       = aws_subnet.private-a.id
  description = "AWS subnet private A id"
  sensitive   = false
}
#
output "private-b-subnet-id" {
  value       = aws_subnet.private-b.id
  description = "AWS subnet private B id"
  sensitive   = false
}
#
output "public-a-subnet-id" {
  value       = aws_subnet.public-a.id
  description = "AWS subnet public A id"
  sensitive   = false
}
#
output "public-b-subnet-id" {
  value       = aws_subnet.public-b.id
  description = "AWS subnet public B id"
  sensitive   = false
}
#
output "aws_internet_gateway_id" {
  value       = aws_internet_gateway.igw.id
  description = "AWS internet gateway id"
  sensitive   = false
}
#
output "aws_internet_gateway_arn" {
  value       = aws_internet_gateway.igw.arn
  description = "AWS internet gateway ARN"
  sensitive   = false
}
#
output "aws_eks_cluster_endpoint" {
  value       = aws_eks_cluster.cluster.endpoint
  description = "AWS EKS cluster endpoint"
  sensitive   = false
}
#
output "kubeconfig-certificate-authority-data" {
  value       = aws_eks_cluster.cluster.certificate_authority[0].data
  description = "kubeconfig certificate authority"
  sensitive   = false
}
#
output "aws_efs_file_system_arn" {
  value       = aws_efs_file_system.eks.arn
  description = "AWS EFS ARN"
  sensitive   = false
}
#
output "aws_efs_file_system_id" {
  value       = aws_efs_file_system.eks.id
  description = "AWS EFS id"
  sensitive   = false
}
#
output "aws_efs_private_a_mount_target" {
  value       = aws_efs_mount_target.zone-a.mount_target_dns_name
  description = "Private EFS zone-a mount target dns name"
  sensitive   = false
}
#
output "aws_efs_private_b_mount_target" {
  value       = aws_efs_mount_target.zone-b.mount_target_dns_name
  description = "Private EFS zone-b mount target dns name"
  sensitive   = false
}
#
output "aws_kms_alias_efs_id" {
  description = "AWS default KMS key for EFS"
  value       = data.aws_kms_alias.efs.id
  sensitive   = false
}
#
output "aws_partition" {
  value       = data.aws_partition.current.partition
  description = "AWS Partition"
  sensitive   = false
}
#
output "aws_account_id" {
  value       = data.aws_caller_identity.current.account_id
  description = "AWS account id"
  sensitive   = false
}
#
output "aws_caller_arn" {
  value       = data.aws_caller_identity.current.arn
  description = "AWS caller user id"
  sensitive   = false
}

output "aws_caller_user" {
  value       = data.aws_caller_identity.current.user_id
  description = "AWS caller user (CLI key id)"
  sensitive   = false
}
#
output "aws_kms_key_id_cloudwatch_logs" {
  value = aws_kms_key.cloudwatch_logs.key_id
  description = "AWS KMS key id for cloudwatch logs"
  sensitive = false
}
#
output "aws_kms_key_id_eks_secrets" {
  value = aws_kms_key.eks_secrets.key_id
  description = "AWS KMS key id for EKS secrets"
  sensitive = false
}
#
# output "zzz_load_balancer_controller_iam_policy" {
#   value = local.load_balancer_controller_iam_policy
# }