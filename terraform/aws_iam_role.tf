resource "aws_iam_role" "eks-cluster" {
  name               = "eks-cluster-${var.cluster_name}"
  tags               = local.tags
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}
#
resource "aws_iam_role" "eks-fargate-profile" {
  name = "eks-fargate-profile"
  tags = local.tags
  assume_role_policy = jsonencode(
    {
      Statement = [
        {
          Action = "sts:AssumeRole"
          Effect = "Allow"
          Principal = {
            Service = "eks-fargate-pods.amazonaws.com"
          }
        }
      ]
      Version = "2012-10-17"
    }
  )
}
#
resource "aws_iam_role" "aws_load_balancer_controller" {
  tags               = local.tags
  assume_role_policy = data.aws_iam_policy_document.aws_load_balancer_controller_assume_role_policy.json
  name               = "aws-load-balancer-controller"
}
#
