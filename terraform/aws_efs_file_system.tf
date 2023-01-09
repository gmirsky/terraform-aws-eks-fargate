resource "aws_efs_file_system" "eks" {
  creation_token   = "eks"
  performance_mode = "generalPurpose"
  throughput_mode  = "bursting"
  encrypted        = true
  kms_key_id       = data.aws_kms_alias.efs.id
  lifecycle_policy {
    transition_to_ia = "AFTER_30_DAYS"
    # AFTER_1_DAY, AFTER_7_DAYS, AFTER_14_DAYS, AFTER_30_DAYS, AFTER_60_DAYS, or AFTER_90_DAYS
    transition_to_primary_storage_class = "AFTER_1_ACCESS"
  }
  tags = merge(
    {
      Name = "eks"
    },
    local.tags
  )
}
#
