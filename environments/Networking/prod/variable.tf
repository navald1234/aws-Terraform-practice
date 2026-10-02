# ------------------------------------------------------
# VPC Configuration Variables
# ------------------------------------------------------
variable "Environment" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "enable_dns_hostnames" {
  type = bool
}

variable "enable_dns_support" {
  type = bool
}

# ------------------------------------------------------
# Public Subnet Variables
# ------------------------------------------------------
variable "public_subnet_01_name" {
  type = string
}

variable "public_subnet_01_cidr" {
  type = string
}

variable "public_subnet_02_name" {
  type = string
}

variable "public_subnet_02_cidr" {
  type = string
}

variable "public_subnet_03_name" {
  type = string
}

variable "public_subnet_03_cidr" {
  type = string
}


# ------------------------------------------------------
# igw Variables
# ------------------------------------------------------

variable "igw_name" {
    type = string
  
}
# ------------------------------------------------------
# igw route cidr block
# ------------------------------------------------------

variable "igw_route_cidr_range" {
    type = string
  
}

# ------------------------------------------------------
# igw route table name
# ------------------------------------------------------

variable "igw_rt_name" {
  type = string
  
}


# ------------------------------------------------------
# Private Subnet Variables
# ------------------------------------------------------
variable "private_subnet_01_name" {
  type = string
}

variable "private_subnet_01_cidr" {
  type = string
}



variable "private_subnet_02_name" {
  type = string
}

variable "private_subnet_02_cidr" {
  type = string
}




variable "private_subnet_03_name" {
  type = string
}

variable "private_subnet_03_cidr" {
  type = string
}


# ------------------------------------------------------
# nat gw Variables
# ------------------------------------------------------

variable "nat_gw_name" {
    type = string
  
}

# ------------------------------------------------------
# nat gw route cidr block
# ------------------------------------------------------

variable "nat_route_cidr_range" {
    type = string
  
}

# ------------------------------------------------------
# nat route table name
# ------------------------------------------------------

variable "nat_gw_rt_name" {
  type = string
  
}