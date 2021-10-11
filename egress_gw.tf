resource "aws_egress_only_internet_gateway" "egressinet" {
  vpc_id = aws_vpc.default.id

  tags = {
    Name = var.egressinet_tag
  }
}