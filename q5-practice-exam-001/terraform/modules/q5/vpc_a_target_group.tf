resource "aws_lb_target_group" "vpc_a_target_group" {
  name     = "vpc-a-target-group"
  port     = 443
  protocol = "TLS"
  vpc_id   = aws_vpc.vpc_a.id
}