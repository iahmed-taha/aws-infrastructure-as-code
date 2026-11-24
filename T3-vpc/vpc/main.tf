provider "aws" {
  region = "us-east-1"

}


# VPC
resource "aws_vpc" "task-vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "task-vpc"
  }
}

# Public Subnet
resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.task-vpc.id
  cidr_block        = var.public_subnet_cidr
  map_public_ip_on_launch = true
 

 tags = {
    Name = "task-public-subnet"
  }

}


# Private Subnet
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.task-vpc.id
  cidr_block = var.private_subnet_cidr

  tags = {
    Name = "task-private-subnet"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.task-vpc.id

  tags = {
    Name = "task-igw"
  }
}

# Route Table for Public Subnet
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.task-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  
  tags = {
    Name = "task-public-rt"
  }
  
}

# Associate Route Table with Public Subnet
resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public_rt.id
}
