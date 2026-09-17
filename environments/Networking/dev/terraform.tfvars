# ------------------------------------------------------
# VPC Variables specified
# ------------------------------------------------------

vpc_name = "dev-env-vpc"
vpc_cidr = "10.0.0.0/16"
Environment = "dev"
enable_dns_hostnames = true
enable_dns_support = true

# ------------------------------------------------------
# public subnet specified
# ------------------------------------------------------

public_subnet_01_name = "public_subnet_01"
public_subnet_01_cidr = "10.0.0.0/24"

public_subnet_02_name = "public_subnet_02"
public_subnet_02_cidr = "10.0.4.0/24"

public_subnet_03_name = "public_subnet_03"
public_subnet_03_cidr = "10.0.6.0/24"

#igw specified

igw_name = "My-igw"
igw_route_cidr_range="0.0.0.0/0"
igw_rt_name = "main-route-table"

# ------------------------------------------------------
# private subnet specified
# ------------------------------------------------------

private_subnet_01_name = "private_subnet_01"
private_subnet_01_cidr = "10.0.2.0/24"

private_subnet_02_name = "private_subnet_02"
private_subnet_02_cidr = "10.0.8.0/24"

private_subnet_03_name = "private_subnet_03"
private_subnet_03_cidr = "10.0.10.0/24"

# nat gw specified

 nat_gw_name = "my_nat_gw"
 nat_route_cidr_range = "0.0.0.0/0"
 nat_gw_rt_name = "nat_gw_rt"