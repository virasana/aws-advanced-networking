resource "aws_lb_target_group" "vpc_b_target_group" {
  name     = "vpc-b-target-group-${substr(uuid(), 0, 3)}"
  port     = 80
  protocol = "TLS"
  vpc_id   = aws_vpc.vpc_b.id
  target_type = "ip"
  health_check {
    matcher = "200-399"
    interval = 30
  }
  lifecycle {
    create_before_destroy = true
  }
}