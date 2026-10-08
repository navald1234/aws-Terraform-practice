output "hosted_zone_id" {
  value = module.dns_module.hosted_zone_id
}
output "hosted_zone_name" {
  value = module.dns_module.hosted_zone_name
}
output "name_servers" {

  value = module.dns.name_servers
}