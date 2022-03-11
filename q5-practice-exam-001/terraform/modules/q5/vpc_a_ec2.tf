resource "aws_instance" "vpc_a_ec2" {
  ami                         = var.ec2_ami_type
  instance_type               = var.ec2_instance_type
  associate_public_ip_address = "true"
  key_name                    = var.ec2_ssh_key_name

  vpc_security_group_ids = [
    aws_security_group.vpc_a_sg_ec2.id
  ]

  availability_zone = var.vpc_a_availability_zone
  subnet_id           = aws_subnet.vpc_a_subnet.id
  private_ip          = var.vpc_a_ec2_private_ip
  tags                = merge(local.common_tags,
  {
    Name = "vpc_a_ec2"
  })
  depends_on          = [
    aws_security_group.vpc_a_sg_ec2
  ]
  user_data           = <<EOF
#!/bin/bash
yum update
yum install -y httpd
echo "Welcome to vpc_a_ec2!" > /var/www/html/index.html
yum install -y mod_ssl
systemctl start httpd
systemctl enable httpd

EOF
}