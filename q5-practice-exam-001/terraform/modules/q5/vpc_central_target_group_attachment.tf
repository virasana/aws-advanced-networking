resource "aws_lb_target_group_attachment" "vpc_central_target_group_attachment_a" {
  for_each          = data.aws_network_interface.vpc_central_a_enis
  target_group_arn  = aws_lb_target_group.vpc_central_target_group.arn
  target_id         = each.value.private_ip
  availability_zone = var.vpc_central_availablility_zone_a
  port              = 443
  depends_on = [data.aws_network_interface.vpc_central_a_enis]
}

data aws_network_interface "vpc_central_a_enis" {
  for_each = aws_vpc_endpoint.vpc_endpoint_a.network_interface_ids
  id       = each.value
  depends_on = [aws_vpc_endpoint.vpc_endpoint_a]
}