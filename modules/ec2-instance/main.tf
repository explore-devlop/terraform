resource "aws_instance" "custom_instance" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_name
  iam_instance_profile = var.iam_instance_profile
  vpc_security_group_ids = var.security_group_ids

  // other instance configuration...

  tags = {
    Name = var.instance_name
  }
}
