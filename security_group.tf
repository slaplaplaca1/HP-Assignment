#delete my ip and add your personal ip
resource "aws_security_group" "honeypot_sg" {
  name        = var.sg_name
  description = var.sg_desc
  vpc_id      = aws_vpc.default.id

  ingress = [
    {
      #delete my ip and add your personal ip
      description      = var.hp1_desc
      from_port        = var.hp1_port
      to_port          = var.hp1_port
      protocol         = var.proto
      cidr_blocks      = ["50.225.229.134/32", "47.156.207.211/32"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    },

    {
      #delete my ip and add your personal ip
      description      = var.hp2_desc
      from_port        = var.hp2_port
      to_port          = var.hp2_port
      protocol         = var.proto
      cidr_blocks      = ["50.225.229.134/32", "47.156.207.211/32"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    },

    {
      #delete my ip and add your personal ip
      description      = var.hp3_desc
      from_port        = var.hp3a_port
      to_port          = var.hp3b_port
      protocol         = var.proto
      cidr_blocks      = ["50.225.229.134/32", "47.156.207.211/32"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    },

    {
      #delete my ip and add your personal ip
      description      = var.ssh_desc
      from_port        = 22
      to_port          = 22
      protocol         = var.proto
      cidr_blocks      = ["47.156.207.211138/32"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]

  egress = [
    {
      #delete my ip and add your personal ip
      description      = "outgoing traffic"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]

  tags = {
    Name = "honeyport_sg"
  }
}
