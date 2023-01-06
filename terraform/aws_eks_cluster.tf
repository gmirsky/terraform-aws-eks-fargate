resource "aws_eks_cluster" "cluster" {
  name     = var.cluster_name
  version  = var.cluster_version
  role_arn = aws_iam_role.eks-cluster.arn
  vpc_config {
    endpoint_private_access = false
    endpoint_public_access  = true
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
  # depends upon may be deleted in the future when the AWS provider
  # handles the deployment order as expected.
  depends_on = [
    aws_iam_role_policy_attachment.amazon-eks-cluster-policy
  ]
}
