resource "aws_iam_policy" "aws_load_balancer_controller" {
  policy = file("./AWSLoadBalancerController.json") #tfsec:ignore:aws-iam-no-policy-wildcards
  name   = "AWSLoadBalancerController"
  path   = "/"
  tags   = local.tags
}
#
# policy file is downloaded from "https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/v2.4.4/docs/install/iam_policy.json"
#