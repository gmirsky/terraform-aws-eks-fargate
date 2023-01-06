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
  value = aws_subnet.private-a.cidr_block
  description = "AWS subnet private A CIDR block"
  sensitive = false
}
#
output "private-b-subnet-cidr" {
  value = aws_subnet.private-b.cidr_block
  description = "AWS subnet private B CIDR block"
  sensitive = false
}
#
output "public-a-subnet-cidr" {
  value = aws_subnet.public-a.cidr_block
  description = "AWS subnet public A CIDR block"
  sensitive = false
}
#
output "public-b-subnet-cidr" {
  value = aws_subnet.public-b.cidr_block
  description = "AWS subnet public B CIDR block"
  sensitive = false
}
#
output "private-a-subnet-id" {
  value = aws_subnet.private-a.id
  description = "AWS subnet private A id"
  sensitive = false
}
#
output "private-b-subnet-id" {
  value = aws_subnet.private-b.id
  description = "AWS subnet private B id"
  sensitive = false
}
#
output "public-a-subnet-id" {
  value = aws_subnet.public-a.id
  description = "AWS subnet public A id"
  sensitive = false
}
#
output "public-b-subnet-id" {
  value = aws_subnet.public-b.id
  description = "AWS subnet public B id"
  sensitive = false
}
#
output "aws_internet_gateway_id" {
  value = aws_internet_gateway.igw.id
  description = "AWS internet gateway id"
  sensitive = false
}
#
output "aws_internet_gateway_arn" {
  value = aws_internet_gateway.igw.arn
}
#

