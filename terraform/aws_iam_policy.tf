resource "aws_iam_policy" "aws_load_balancer_controller" {
  #tfsec:ignore:aws-iam-no-policy-wildcards
  # policy file is downloaded from "https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/v2.4.4/docs/install/iam_policy.json"
  policy = file("./AWSLoadBalancerController.json")
  name   = "AWSLoadBalancerController"
  path   = "/"
  tags   = local.tags
}
#
