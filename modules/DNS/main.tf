resource "aws_route53_zone" "primary" {
  name = var.domain_name
  comment = "Managed by terraform"
  force_destroy = false
}
