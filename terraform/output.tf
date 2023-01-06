output "cli_command_output" {
  value = module.cli.result
  description = "Output from the AWS CLI command"
  sensitive = false
}
#