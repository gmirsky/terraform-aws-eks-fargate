resource "aws_eip" "nat" {
  vpc = true
  tags = merge(
    local.tags,
    {
      Name = "nat"
    }
  )
}
