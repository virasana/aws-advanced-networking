resource "aws_lb_listener" "vpc_central_alb_listener" {
  load_balancer_arn = aws_lb.vpc_central_alb.arn
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = aws_acm_certificate.vpc_central_cert.arn
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.vpc_central_target_group.arn
  }
}