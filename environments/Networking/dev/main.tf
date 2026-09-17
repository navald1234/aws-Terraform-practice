module "vpc_module" {
  source = "../../../modules/Networking/vpc"

  # VPC Configuration
  vpc_name             = var.vpc_name
  vpc_cidr             = var.vpc_cidr
  Environment          = var.Environment
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  # Public Subnets
  public_subnet_01_name = var.public_subnet_01_name
  public_subnet_01_cidr = var.public_subnet_01_cidr
  
  public_subnet_02_name = var.public_subnet_02_name
  public_subnet_02_cidr = var.public_subnet_02_cidr
  
  public_subnet_03_name = var.public_subnet_03_name
  public_subnet_03_cidr = var.public_subnet_03_cidr

 #igw
 igw_name = var.igw_name
 igw_route_cidr_range= var.igw_route_cidr_range
 igw_rt_name = var.igw_rt_name

  # Private Subnets

  private_subnet_01_name = var.private_subnet_01_name
  private_subnet_01_cidr = var.private_subnet_01_cidr


  private_subnet_02_name = var.private_subnet_02_name
  private_subnet_02_cidr = var.private_subnet_02_cidr


  private_subnet_03_name = var.private_subnet_03_name
  private_subnet_03_cidr = var.private_subnet_03_cidr

 #nat gateway

 nat_gw_name = var.nat_gw_name
 nat_route_cidr_range = var.nat_route_cidr_range
 nat_gw_rt_name = var.nat_gw_rt_name
}