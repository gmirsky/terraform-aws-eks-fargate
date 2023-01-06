output "cli_command_output" {
  value       = module.cli.result
  description = "Output from the AWS CLI command"
  sensitive   = false
}
#
output "aws_load_balancer_controller_role_arn" {
  description = "AWS load balancer ARN"
  value = aws_iam_role.aws_load_balancer_controller.arn
  sensitive = false
}
#
output "vpc_id" {
  value = aws_vpc.main.id
  description = "AWS VPC id"
  sensitive = false
}