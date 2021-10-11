resource "aws_route_table_association" "ps1_rt_association" {
  subnet_id      = aws_subnet.pubsub1.id
  route_table_id = aws_route_table.ps1_rt.id
}