resource "aws_lb_listener" "vpc_a_nlb_listener" {
  load_balancer_arn = aws_lb.vpc_a_nlb.arn
  port              = "443"
  protocol          = "TLS"
  certificate_arn   = aws_acm_certificate.vpc_central_cert.arn
  alpn_policy       = "HTTP2Preferred"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.vpc_a_target_group.arn
  }
}