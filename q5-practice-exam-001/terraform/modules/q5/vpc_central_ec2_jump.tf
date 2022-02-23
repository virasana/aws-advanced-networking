resource "aws_instance" "vpc_central_ec2_jump" {
  ami                         = var.ec2_ami_type
  instance_type               = var.ec2_instance_type
  associate_public_ip_address = "true"
  key_name                    = var.ec2_ssh_key_name

  vpc_security_group_ids = [
    aws_security_group.vpc_central_sg_ec2.id
  ]

  availability_zone = var.vpc_central_availablility_zone_a
  subnet_id           = aws_subnet.vpc_central_subnet_a.id
  private_ip          = "10.0.0.172"
  tags                = merge(local.common_tags,
  {
    Name = "vpc_central_ec2_jump"
  })
  depends_on          = [
    aws_security_group.vpc_central_sg_ec2
  ]
}