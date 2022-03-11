output "ec2_sender_public_ip" {
  value = "ssh ec2-user@${module.general.ec2_sender_public_ip}"
}

output "ec2_recipient_public_ip" {
  value = "ssh ec2-user@${module.general.ec2_recipient_public_ip}"
}

output "ec2_wildcard_public_ip" {
  value = "ssh ec2-user@${module.general.ec2_wildcard_public_ip}"
}




