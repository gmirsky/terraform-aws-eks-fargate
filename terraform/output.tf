output "cli_command_output" {
  value       = module.cli.result
  description = "Output from the AWS CLI command"
  sensitive   = false
}
#
output "aws_load_balancer_controller_role_arn" {
  value = aws_iam_role.aws_load_balancer_controller.arn
}
#