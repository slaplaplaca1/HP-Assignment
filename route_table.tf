resource "aws_route_table" "ps1_rt" {
  vpc_id = aws_vpc.default.id

  route = [
    {
      cidr_block = var.all_traffic
      gateway_id = aws_internet_gateway.inetgw.id
      # workaround as suggested here: https://issueexplorer.com/issue/hashicorp/terraform-provider-aws/20756#issuecomment-913284042
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      nat_gateway_id             = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }
  ]

  tags = {
    Name = var.ps1_rt_tag
  }
}