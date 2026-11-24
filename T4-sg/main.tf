
provider "aws" {
  region = "us-east-1"
}

# VPC Module
module "vpc" {
  source = "../T3-vpc/vpc"
   vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
}

# EC2 Module

module "ec2" {
  source = "../T1-ec2/ec2"

  vpc_id          = module.vpc.vpc_id
  public_subnet_id = module.vpc.public_subnet_id
  subnet_id        = module.vpc.public_subnet_id
  ami_id              = "ami-0f8a61b66d1accaee" # Example AMI ID for Ubuntu 20.04 in us-east-1
  instance_type    = "t3.micro"
}


# Security Group Module
module "security_group" {
  source      = "./security_groups"
  vpc_id      = module.vpc.vpc_id
  instance_id = module.ec2.instance_id
}
# Attach Security Group to EC2
resource "aws_network_interface_sg_attachment" "sg_attach" {
  security_group_id    = module.security_group.sg_id
  network_interface_id = module.ec2.primary_network_interface_id
}
