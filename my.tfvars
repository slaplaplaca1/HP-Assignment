region         = "us-east-1"
vpc_cidr       = "10.0.0.0/16"
vpc_tag        = "Spencer_vpc_test"
inetgw_tag     = "Spencer_inet_gw"
ps1_tag        = "Spencer_pub_sub_1"
ps1_az         = "us-east-1a"
ps1_cidr       = "10.0.1.0/24"
egressinet_tag = "Spencer_egress_inet"
all_traffic    = "0.0.0.0/0"
ps1_rt_tag     = "Spencers_route_table_ps1"
sg_name        = "honeypot_sg"
sg_desc        = "Allow traffic for honeypot"
hp1_desc       = "Allow traffic honeypost first port"
hp2_desc       = "Allow traffic honeypost second port"
hp3_desc       = "Allow traffic honeypost third port"
ssh_desc       = "Allow traffic for ssh"
hp1_port       = "64295"
hp2_port       = "64297"
hp3a_port      = "1"
hp3b_port      = "64000"
proto          = "tcp"
ubuntu_ami     = "ami-09e67e426f25ce0d7"
instance_type  = "t2.micro"
ec2_tag        = "honeypot_ec2"
public_ip      = "true"
key_name       = "Spencerskey"
pub_key        = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDBFLAownsnn9WzQbA/VcAxBSamJQ3Qw5tGyPbDoI4+LmZaw+N9lzRU51wLK02SZpZGfLjl77jtAuHaYgtYIhhSPxO+M3HOL31sr3mGqv+cvXSAbZMty7WJuIMpLlgeRp29ZLIkoj0Lab+m5N+iYrGnkDjB4RuwVA7GW67nvg0+Im1VIL9I1RR5PNz0OzvJjQWjLjBmDyMrFPlrB0pYUw1MvOzKhCJ53CH/+2ijhnAv95mN2nBEObeSDkNWiTEQsi3hRdP4tN3x+4jwqCo2yuj9g7ufonVHA58Y0TAX2tsLdg2Kr/nUM8LRHx2OYHQK1s3HJs810z1n6eYxFXaXQyTCicIqmK9L3sEFmu2ra0niyUBvWLE6IsmHjTQFTAz/w8A+RsrF4AyZ8L5DjDBdOUOSCUhagmtkBymeqHC4E12Znv9aKayQ+nD42d8a+ymkU3IO8C8CargGwKkdNIBi4xfFE6hhvKJqfHJcY1xLl3GPe8BRe+vsVb5Yb7Wyxs2gB/c= root@ip-172-31-2-182"