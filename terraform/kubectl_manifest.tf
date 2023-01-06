# 1- simple-deployment
resource "kubectl_manifest" "simple-deployment" {
  yaml_body = file("${path.module}/../k8s/simple-deployment.yaml")
  depends_on = [
    aws_eks_fargate_profile.staging
  ]
}
#