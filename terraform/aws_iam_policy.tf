resource "aws_iam_policy" "aws_load_balancer_controller" {
   policy = local.load_balancer_controller_iam_policy
  name   = "AWSLoadBalancerController"
  path   = "/"
  tags   = local.tags
}
#