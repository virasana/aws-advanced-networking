resource "aws_lb" "vpc_b_nlb" {
  name               = "vpc-b-nlb"
  internal           = true
  load_balancer_type = "network"
  subnets            = [aws_subnet.vpc_b_subnet.id]
  enable_deletion_protection = false
  tags              = merge(local.common_tags,
  {
    Name        = "vpc_b_nlb"
  })
}