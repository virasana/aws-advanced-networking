resource "aws_lb" "vpc_a_nlb" {
  name                       = "vpc-a-nlb"
  internal                   = true
  load_balancer_type         = "network"

  subnet_mapping {
    subnet_id = aws_subnet.vpc_a_subnet.id
    private_ipv4_address       = var.vpc_a_nlb_ip_address
  }

  enable_deletion_protection = false
  tags                       = merge(local.common_tags,
  {
    Name = "vpc_a_nlb"
  })
}