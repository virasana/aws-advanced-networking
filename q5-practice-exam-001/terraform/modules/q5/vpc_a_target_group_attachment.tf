resource "aws_lb_target_group_attachment" "vpc_a_target_group_attachment_a" {
  target_group_arn  = aws_lb_target_group.vpc_a_target_group.arn
  target_id         = aws_instance.vpc_a_ec2.private_ip
  availability_zone = var.vpc_a_availability_zone
  port              = 80
}