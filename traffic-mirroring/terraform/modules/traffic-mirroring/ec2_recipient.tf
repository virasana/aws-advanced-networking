resource "aws_instance" "ec2_recipient" {
  ami                         = var.ec2_ami_type
  instance_type               = var.ec2_instance_type
  associate_public_ip_address = "true"
  key_name                    = aws_key_pair.ec2.key_name

  vpc_security_group_ids = [
    aws_security_group.ec2.id
  ]

  availability_zone = var.availability_zone
  subnet_id           = aws_subnet.subnet.id
  private_ip          = var.ec2_recipient_private_ip
  tags                = merge(local.common_tags,
  {
    Name = "RECIPIENT"
  })
  depends_on          = [aws_security_group.ec2]
  user_data           = <<EOF
#!/bin/bash
echo "*** INSTALLING HTTPD ***";
yum update;
yum install -y httpd;
echo "Welcome to RECIPIENT!" > /var/www/html/index.html;
systemctl start httpd;
systemctl enable httpd;
echo "==> DONE";
EOF
}