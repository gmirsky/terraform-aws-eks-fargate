# Must be enabled for EFS
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = var.vpc_enable_dns_support
  enable_dns_hostnames = var.vpc_enable_dns_hostnames
  tags = merge(
    {
      Name = var.vpc_name
    },
    var.tags
  )
}
#
