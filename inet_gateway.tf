resource "aws_internet_gateway" "inetgw" {
  vpc_id = aws_vpc.default.id

  tags = {
    Name = var.inetgw_tag
  }
}