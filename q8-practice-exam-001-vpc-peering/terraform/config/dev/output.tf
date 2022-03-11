output "ec2_a_public_ip" {
  value = "ssh ec2-user@${module.general.ec2_a_public_ip}"
}

output "ec2_b_public_ip" {
  value = "ssh ec2-user@${module.general.ec2_b_public_ip}"
}

