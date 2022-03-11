output "private_key" {
  value = aws_key_pair.ec2.public_key
}

output "ec2_a_public_ip" {
  value = aws_instance.vpc_a_ec2.public_ip
}

output "ec2_b_public_ip" {
  value = aws_instance.vpc_b_ec2.public_ip
}