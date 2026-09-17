resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr

  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support
 

  tags = {
    Name = var.vpc_name
    Environment = var.Environment
  }
}

# Public Subnet


resource "aws_subnet" "public_subnet_01" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_01_cidr

  tags = {
    Name = var.public_subnet_01_name
  }
}
resource "aws_subnet" "public_subnet_02" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_02_cidr

  tags = {
    Name = var.public_subnet_02_name
  }
}
resource "aws_subnet" "public_subnet_03" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_03_cidr

  tags = {
    Name = var.public_subnet_03_name
  }
}


#internet gateway

resource "aws_internet_gateway" "my_igw" {
vpc_id = aws_vpc.main.id
tags = {
Name = var.igw_name
}
}

# internet gateway route table

resource "aws_route_table" "igw_rt" {
vpc_id = aws_vpc.main.id

route {
cidr_block = var.igw_route_cidr_range
gateway_id = aws_internet_gateway.my_igw.id
}

tags = {
Name = var.igw_rt_name
}
}


# Associate Route Table with Subnet


resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public_subnet_01.id
  route_table_id = aws_route_table.igw_rt.id
}


# Private subnet 


resource "aws_subnet" "private_subnet_01" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_01_cidr

  tags = {
    Name = var.private_subnet_01_name
  }
}


resource "aws_subnet" "private_subnet_02" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_02_cidr

  tags = {
    Name = var.private_subnet_02_name
  }
}


resource "aws_subnet" "private_subnet_03" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_03_cidr

  tags = {
    Name = var.private_subnet_03_name
  }
}

# elastic ip create

resource "aws_eip" "lb" {

  domain   = "vpc"
}

# nat gateway

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.public_subnet_01.id

  tags = {
     Name = var.nat_gw_name
}

  depends_on = [aws_internet_gateway.my_igw]
}

# route table for nat gateway

resource "aws_route_table" "nat_gw_rt" {
vpc_id = aws_vpc.main.id

route {
cidr_block = var.nat_route_cidr_range
gateway_id = aws_nat_gateway.nat_gw.id
}

tags = {
Name = var.nat_gw_rt_name
}
}

# Associate Route Table with Subnet


resource "aws_route_table_association" "private_assoc" {
  subnet_id      = aws_subnet.private_subnet_01.id
  route_table_id = aws_route_table.nat_gw_rt.id
}
