resource "aws_lb" "vpc_a_nlb" {
  name               = "vpc-a-nlb"
  internal           = true
  load_balancer_type = "network"
  subnets            = [aws_subnet.vpc_a_subnet.id]
  enable_deletion_protection = false
  tags              = merge(local.common_tags,
  {
    Name        = "vpc_a_nlb"
  })
}