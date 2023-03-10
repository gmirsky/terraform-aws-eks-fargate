data "aws_caller_identity" "current" {
}
#
data "aws_partition" "current" {
}
#
data "aws_kms_alias" "efs" {
  name = "alias/aws/elasticfilesystem"
}
#
data "aws_eks_cluster_auth" "eks" {
  name = aws_eks_cluster.cluster.id
}
#
data "tls_certificate" "eks" {
  url = aws_eks_cluster.cluster.identity[0].oidc[0].issuer
}
#
data "aws_iam_policy_document" "aws_load_balancer_controller_assume_role_policy" {
  statement {
    actions = [
      "sts:AssumeRoleWithWebIdentity"
    ]
    effect = "Allow"
    condition {
      test     = "StringEquals"
      variable = "${replace(aws_iam_openid_connect_provider.eks.url, "https://", "")}:sub"
      values = [
        "system:serviceaccount:kube-system:aws-load-balancer-controller"
      ]
    }
    principals {
      identifiers = [
        aws_iam_openid_connect_provider.eks.arn
      ]
      type = "Federated"
    }
  }
}
#