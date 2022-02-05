resource "aws_vpc_endpoint_service" "vpc_a_endpoint_service" {
  acceptance_required        = false
  network_load_balancer_arns = [aws_lb.vpc_a_nlb.arn]
}