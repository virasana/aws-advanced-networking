//resource "aws_vpc_endpoint" "vpc_endpoint_b" {
//  vpc_id            = aws_vpc.vpc_b.id
//  service_name      = aws_vpc.vpc_b.tags["Name"]
//  vpc_endpoint_type = "Interface"
//
//  security_group_ids = [aws_security_group.vpc_central_endpoint_sg.id]
//
//  subnet_ids          = [aws_subnet.vpc_b_subnet.id]
//  private_dns_enabled = false
//}
//
//resource "aws_route53_record" "vpc_b_endpoint_service" {
//  zone_id = aws_route53_zone.internal.zone_id
//  name    = "vpc-b.${aws_route53_zone.internal.name}"
//  type    = "CNAME"
//  ttl     = "300"
//  records = [aws_vpc_endpoint.vpc_endpoint_a.dns_entry[0]["dns_name"]]
//}
//
//// resource aws_security_group "vpc_a_endpoint" {}