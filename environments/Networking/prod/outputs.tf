# ------------------------------------------------------
# VPC id output
# ------------------------------------------------------

output "vpc_id" {
    value = module.vpc_module.vpc_id
  
}

# ------------------------------------------------------
# public subnet outputs
# ------------------------------------------------------
output "public_subnet_01_id" {
    value = module.vpc_module.public_subnet_01_id
  
}
output "public_subnet_02_id" {
  value = module.vpc_module.public_subnet_02_id
  
}
output "public_subnet_03_id" {
  value = module.vpc_module.public_subnet_03_id
  
}


# ------------------------------------------------------
# private subnet outputs
# ------------------------------------------------------
output "private_subnet_01_id" {
  value = module.vpc_module.private_subnet_01_id
  
}
output "private_subnet_02_id" {
  value = module.vpc_module.private_subnet_02_id
  
}
output "private_subnet_03_id" {
  value = module.vpc_module.private_subnet_03_id
  
}
