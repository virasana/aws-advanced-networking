resource "tls_self_signed_cert" "vpc_central_certificate" {
  key_algorithm   = "ECDSA"
  private_key_pem = tls_private_key.vpc_central_private_key.private_key_pem

  subject {
    common_name  = "q5.practice.exam.com"
    organization = "Karunasoft Consulting Ltd"
  }

  validity_period_hours = 12

  allowed_uses = [
    "key_encipherment",
    "digital_signature",
    "server_auth",
  ]
}

resource "tls_private_key" "vpc_central_private_key" {
  algorithm   = "ECDSA"
  ecdsa_curve = "P384"
}

resource "aws_iam_server_certificate" "vpc_central_cert" {
  name             = "vpc-central-cert"
  certificate_body = tls_self_signed_cert.vpc_central_certificate.cert_pem
  private_key      = tls_private_key.vpc_central_private_key.private_key_pem
}