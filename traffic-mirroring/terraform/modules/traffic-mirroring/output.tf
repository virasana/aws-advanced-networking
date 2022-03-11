output "private_key" {
  value = aws_key_pair.ec2.public_key
}

output "ec2_sender_public_ip" {
  value = aws_instance.ec2_sender.public_ip
}

output "ec2_recipient_public_ip" {
  value = aws_instance.ec2_recipient.public_ip
}

output "ec2_wildcard_public_ip" {
  value = aws_instance.ec2_wildcard.public_ip
}