output "public_ip" {
    description = "This is Public ip"
    value = module.ec2_module.public_ip
  
}
output "private_ip" {
    description = "This is private ip"
    value = module.ec2_module.private_ip
}

output "security_group_id" {
    description = "security grp id"
    value = module.ec2_module.security_group_id
  
}
