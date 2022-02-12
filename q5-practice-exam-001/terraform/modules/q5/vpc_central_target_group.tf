resource "aws_lb_target_group" "vpc_central_target_group" {
  name     = "vpc-central-target-group"
  port     = 443
  protocol = "HTTPS"
  vpc_id   = aws_vpc.vpc_central.id
  target_type = "ip"
}