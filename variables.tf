variable "region" {
  type        = string
  description = "Aws region"
}

variable "vpc_cidr" {
  type        = string
  description = "vpc cidrblock"
}

variable "vpc_tag" {
  type        = string
  description = "vpc tag"
}

variable "inetgw_tag" {
  type        = string
  description = "internet gateway tag"
}

variable "ps1_tag" {
  type        = string
  description = "public subnet tag"
}

variable "ps1_az" {
  type        = string
  description = "public subnet availablity zone"
}

variable "ps1_cidr" {
  type        = string
  description = "public subnet cidr block"
}

variable "egressinet_tag" {
  type        = string
  description = "egress internet gateway tag"
}

variable "all_traffic" {
  type        = string
  description = "allow all traffic"
}

variable "ps1_rt_tag" {
  type        = string
  description = "tag for public subnet route table"
}

variable "sg_name" {
  type        = string
  description = "name of security group"
}

variable "sg_desc" {
  type        = string
  description = "security group description"
}

variable "hp1_desc" {
  type        = string
  description = "security group description of first rule"
}

variable "hp2_desc" {
  type        = string
  description = "security group description of second rule"
}

variable "hp3_desc" {
  type        = string
  description = "security group description of second rule"
}

variable "ssh_desc" {
  type        = string
  description = "security group description of ssh rule"
}

variable "hp1_port" {
  type        = string
  description = "port for hp1 rule"
}

variable "hp2_port" {
  type        = string
  description = "port for hp2 rule"
}

variable "hp3a_port" {
  type        = string
  description = "port for hp3 rule"
}

variable "hp3b_port" {
  type        = string
  description = "port for hp3 rule"
}

variable "proto" {
  type        = string
  description = "sg rule protocol"
}

variable "ubuntu_ami" {
  type        = string
  description = "ami id"
}

variable "instance_type" {
  type        = string
  description = "ec2 instance type"
}

variable "ec2_tag" {
  type        = string
  description = "ec2 instance type"
}

variable "public_ip" {
  type        = string
  description = "boolean for public ip address"
}

variable "key_name" {
  type        = string
  description = "name of keypair"
}

variable "pub_key" {
  type        = string
  description = "public key info"
}