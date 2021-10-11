resource "aws_subnet" "pubsub1" {
  vpc_id            = aws_vpc.default.id
  availability_zone = var.ps1_az
  cidr_block        = var.ps1_cidr

  tags = {
    Name = var.ps1_tag
  }
}
