resource "aws_subnet" "private-a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private-a-subnet-cidr
  availability_zone = "${var.region}a"
  tags = merge(
    local.tags,
    {
      "Name"                                      = "private-${var.region}a"
      "kubernetes.io/role/internal-elb"           = "1"
      "kubernetes.io/cluster/${var.cluster_name}" = "owned"
    }
  )
}
#
resource "aws_subnet" "private-b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private-b-subnet-cidr
  availability_zone = "${var.region}b"
  tags = merge(
    local.tags,
    {
      "Name"                                      = "private-${var.region}b"
      "kubernetes.io/role/internal-elb"           = "1"
      "kubernetes.io/cluster/${var.cluster_name}" = "owned"
    }
  )
}
#
resource "aws_subnet" "public-a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public-a-subnet-cidr
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true #tfsec:ignore:aws-ec2-no-public-ip-subnet
  tags = merge(
    local.tags,
    {
      "Name"                                      = "public-${var.region}a"
      "kubernetes.io/role/elb"                    = "1"
      "kubernetes.io/cluster/${var.cluster_name}" = "owned"
    }
  )
}
#
resource "aws_subnet" "public-b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public-b-subnet-cidr
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = true #tfsec:ignore:aws-ec2-no-public-ip-subnet
  tags = merge(
    local.tags,
    {
      "Name"                                      = "public-${var.region}b"
      "kubernetes.io/role/elb"                    = "1"
      "kubernetes.io/cluster/${var.cluster_name}" = "owned"
    }
  )
}
#
