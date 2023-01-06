locals {
  tags = merge(
    var.tags,
    {
      created_by = data.aws_caller_identity.current.arn
    }
  )
}
#