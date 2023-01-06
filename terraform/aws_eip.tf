resource "aws_eip" "nat" {
  vpc = true
  tags = merge(
    var.tags,
    {
      Name = "nat"
    }
  )
}
