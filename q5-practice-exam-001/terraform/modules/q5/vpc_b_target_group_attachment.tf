resource "aws_lb_target_group_attachment" "vpc_b_target_group_attachment_b" {
  target_group_arn  = aws_lb_target_group.vpc_b_target_group.arn
  target_id         = aws_instance.vpc_b_ec2.private_ip
  availability_zone = var.vpc_b_availability_zone
  port              = 80
}