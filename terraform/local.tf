locals {
  tags = merge(
    var.tags,
    {
      created_by = data.aws_caller_identity.current.arn
    }
  )
  load_balancer_controller_iam_policy = templatefile("./aws-load-balancer-controller-iam-policy.json",
    {
      partition  = data.aws_partition.current.partition
      region     = var.region
      account_id = data.aws_caller_identity.current.account_id
    }
  )
}
#
