resource "aws_kms_key" "cloudwatch_logs" {
  description              = "KMS key for cloudwatch logs"
  deletion_window_in_days  = 7
  key_usage                = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  enable_key_rotation      = true
  tags = merge(
    {
      Name = "cloudwatch_logs"
    },
    local.tags
  )
}
#
resource "aws_kms_key" "eks_secrets" {
  description              = "KMS key for eks secrets"
  deletion_window_in_days  = 7
  key_usage                = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  enable_key_rotation      = true
  tags = merge(
    {
      Name = "eks_secrets"
    },
    local.tags
  )
}
#
