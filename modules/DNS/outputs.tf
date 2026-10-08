output "hosted_zone_id" {
  value = aws_route53_zone.primary.id
}
output "hosted_zone_name" {
  value = aws_route53_zone.primary.name
}
output "hosted_zone_name_servers" {
  value = aws_route53_zone.primary.name_servers
}
output "hosted_zone_arn" {

  value = aws_route53_zone.primary.arn
}
