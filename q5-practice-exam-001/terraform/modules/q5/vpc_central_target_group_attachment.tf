//resource "aws_lb_target_group_attachment" "vpc_central_target_group_attachment_a" {
//  for_each = data.aws_network_interface.vpc_central_eni_a
//  target_group_arn = aws_lb_target_group.vpc_a_target_group.arn
//  target_id        = each.value.private_ip
//  port             = 443
//}
//
//data "aws_network_interface" "vpc_central_eni_a" {
//  for_each = aws_vpc_endpoint.vpc_endpoint_a
//  id       = each.value
//}