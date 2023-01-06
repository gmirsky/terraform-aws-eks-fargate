resource "aws_eks_fargate_profile" "kube-system" {
  cluster_name           = aws_eks_cluster.cluster.name
  fargate_profile_name   = "kube-system"
  pod_execution_role_arn = aws_iam_role.eks-fargate-profile.arn
  # These subnets must have the following resource tag: 
  # kubernetes.io/cluster/<CLUSTER_NAME>.
  subnet_ids = [
    aws_subnet.private-a.id,
    aws_subnet.private-b.id
  ]
  selector {
    namespace = "kube-system"
  }
  tags = local.tags
}
#
resource "aws_eks_fargate_profile" "staging" {
  cluster_name           = aws_eks_cluster.cluster.name
  fargate_profile_name   = "staging"
  pod_execution_role_arn = aws_iam_role.eks-fargate-profile.arn
  # These subnets must have the following resource tag: 
  # kubernetes.io/cluster/<CLUSTER_NAME>.
  subnet_ids = [
    aws_subnet.private-a.id,
    aws_subnet.private-b.id
  ]
  selector {
    namespace = "staging"
  }
  tags = local.tags
}
#