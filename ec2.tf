data "template_file" "ec2_user_data" {
  template = "${file("${path.module}/installhoneypot.sh")}"
}

resource "aws_instance" "Spencerec2" {
  ami                         = var.ubuntu_ami #in us-east-1
  instance_type               = var.instance_type
  availability_zone           = var.ps1_az
  vpc_security_group_ids      = [aws_security_group.honeypot_sg.id]
  subnet_id                   = aws_subnet.pubsub1.id
  associate_public_ip_address = var.public_ip
  key_name                    = var.key_name
  user_data                   = "${data.template_file.ec2_user_data.template}"


  tags = {
    Name = var.ec2_tag
  }
}
