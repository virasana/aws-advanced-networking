resource "aws_lb" "vpc_b_nlb" {
  name                 = "vpc-b-nlb"
  internal             = true
  load_balancer_type   = "network"

  subnet_mapping {
    subnet_id = aws_subnet.vpc_b_subnet.id
    private_ipv4_address       = var.vpc_b_nlb_ip_address
  }

  enable_deletion_protection = false
  tags                       = merge(local.common_tags,
  {
    Name = "vpc_b_nlb"
  })
}