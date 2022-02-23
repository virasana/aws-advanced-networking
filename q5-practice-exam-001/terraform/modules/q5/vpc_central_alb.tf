resource "aws_lb" "vpc_central_alb" {
  name               = "vpc-central-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.vpc_central_alb_sg.id]
  subnets            = [aws_subnet.vpc_central_subnet_a.id, aws_subnet.vpc_central_subnet_b.id]
  enable_deletion_protection = false
  tags              = merge(local.common_tags,
  {
    Name        = "vpc_central_alb"
  })
}