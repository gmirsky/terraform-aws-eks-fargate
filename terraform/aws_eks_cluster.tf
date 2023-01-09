resource "aws_eks_cluster" "cluster" {
  name     = var.cluster_name
  version  = var.cluster_version
  role_arn = aws_iam_role.eks-cluster.arn
  enabled_cluster_log_types = [
    "api",
    "authenticator",
    "audit",
    "scheduler",
    "controllerManager"
  ]
  vpc_config {
    endpoint_private_access = var.aws_eks_cluster_endpoint_private_access
    endpoint_public_access  = var.aws_eks_cluster_endpoint_public_access
    public_access_cidrs = [
      "0.0.0.0/0"
    ]
    subnet_ids = [
      aws_subnet.private-a.id,
      aws_subnet.private-b.id,
      aws_subnet.public-a.id,
      aws_subnet.public-b.id
    ]
  }
  encryption_config {
    provider {
      key_arn = aws_kms_key.eks_secrets.arn
    }
    resources = [
      "secrets"
    ]
  }
  depends_on = [
    aws_iam_role_policy_attachment.amazon-eks-cluster-policy,
    aws_cloudwatch_log_group.eks_cluster
  ]
  tags = local.tags
}
#
