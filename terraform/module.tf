module "cli" {
  source  = "digitickets/cli/aws"
  version = "5.0.4"
  aws_cli_commands = [
    "eks",
    "update-kubeconfig --name ${var.cluster_name} --region ${var.region}"
  ]
  depends_on = [
    aws_eks_cluster.cluster
  ]
}
#
