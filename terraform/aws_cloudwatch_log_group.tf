resource "aws_cloudwatch_log_group" "vpc_main" {
  name              = "/aws/vpc/vpc_main"
  skip_destroy      = false
  retention_in_days = 90
  kms_key_id        = aws_kms_key.cloudwatch_logs.key_id
  tags              = local.tags
}
#
resource "aws_cloudwatch_log_group" "eks_cluster" {
  name              = "/aws/eks/${var.cluster_name}/cluster"
  skip_destroy      = false
  retention_in_days = 90
  kms_key_id        = aws_kms_key.cloudwatch_logs.key_id
  tags              = local.tags
}
#