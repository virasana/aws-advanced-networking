resource "aws_lb_target_group" "vpc_a_target_group" {
  name     = "vpc-a-target-group-${substr(uuid(), 0, 3)}"
  port     = 80
  protocol = "TLS"
  vpc_id   = aws_vpc.vpc_a.id
  health_check {
    matcher = "200-399"
    interval = 30
  }
  lifecycle {
    create_before_destroy = true
  }
}