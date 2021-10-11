#need to create your own keypair using ssh-keygen -m PEM command
#more info can be found here: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#how-to-generate-your-own-key-and-import-it-to-aws
resource "aws_key_pair" "Spencerskey" {
  key_name   = var.key_name
  public_key = var.pub_key
}