resource "aws_lb_target_group" "vpc_b_target_group" {
  name     = "vpc-b-target-group"
  port     = 443
  protocol = "TLS"
  vpc_id   = aws_vpc.vpc_b.id
}