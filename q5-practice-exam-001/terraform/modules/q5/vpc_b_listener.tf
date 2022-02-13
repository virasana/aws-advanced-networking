resource "aws_lb_listener" "vpc_b_listener" {
  load_balancer_arn = aws_lb.vpc_b_nlb.arn
  port              = "443"
  protocol          = "TLS"
  certificate_arn   = aws_acm_certificate.vpc_central_cert.arn
  alpn_policy       = "HTTP2Preferred"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.vpc_b_target_group.arn
  }
  depends_on = [aws_lb_target_group.vpc_b_target_group]
}