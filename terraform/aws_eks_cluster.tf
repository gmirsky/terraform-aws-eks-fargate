resource "aws_eks_cluster" "cluster" {
  name     = var.cluster_name
  version  = var.cluster_version
  role_arn = aws_iam_role.eks-cluster.arn
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
  # encryption_config {
  #   provider {
  #     key_arn = aws_kms_key.eks-kms-key.arn
  #   }
  #   resources = ["secrets"]
  # }
  # depends upon may be deleted in the future when the AWS provider
  # handles the deployment order as expected.
  depends_on = [
    aws_iam_role_policy_attachment.amazon-eks-cluster-policy
  ]
  tags = local.tags
}
#