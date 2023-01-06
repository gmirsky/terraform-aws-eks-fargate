data "aws_eks_cluster_auth" "eks" {
  name = aws_eks_cluster.cluster.id
}
#
data "tls_certificate" "eks" {
  url = aws_eks_cluster.cluster.identity[0].oidc[0].issuer
}
#