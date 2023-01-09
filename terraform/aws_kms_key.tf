resource "aws_kms_key" "cloudwatch_logs" {
  description              = "KMS key for cloudwatch logs"
  deletion_window_in_days  = 7
  key_usage                = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  enable_key_rotation      = true
}
#
