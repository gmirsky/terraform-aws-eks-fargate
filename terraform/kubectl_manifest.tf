#
resource "kubectl_manifest" "simple-deployment" {
  yaml_body = file("${path.module}/../k8s/simple-deployment.yaml")
  depends_on = [
    aws_eks_fargate_profile.staging
  ]
}
#
resource "kubectl_manifest" "service" {
  yaml_body = file("${path.module}/../k8s/service.yaml")
  depends_on = [
    helm_release.metrics-server
  ]
}
#

resource "kubectl_manifest" "hpa" {
  yaml_body = file("${path.module}/../k8s/hpa.yaml")
  depends_on = [
    helm_release.metrics-server,
    kubectl_manifest.service
  ]
}
#
resource "kubectl_manifest" "pdb" {
  yaml_body = file("${path.module}/../k8s/pdb.yaml")
  depends_on = [
    helm_release.metrics-server,
    kubectl_manifest.service,
    kubectl_manifest.hpa
  ]
}
#
resource "kubectl_manifest" "ingress" {
  yaml_body = file("${path.module}/../k8s/ingress.yaml")
  depends_on = [
    helm_release.metrics-server,
    kubectl_manifest.service,
    kubectl_manifest.hpa,
    kubectl_manifest.pdb
  ]
}
#