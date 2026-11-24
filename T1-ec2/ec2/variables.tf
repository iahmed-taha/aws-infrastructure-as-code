variable "ami_id" {
  description = "The ID of the AMI to use for the instance."
  type        = string
  default     = "ami-0f8a61b66d1accaee" # Example AMI ID for Ubuntu 20.04 in us-east-1
  
}

variable "instance_type" {
  description = "The type of instance to use."
  type        = string
  default     = "t3.micro"
}

variable "server_name" {
  description = "The name of the server."
  type        = string
  default     = "Tf-EC2-Server"
}

variable "key_name" {
  description = "The name of the key pair to use for SSH access."
  type        = string
  default     = "my-instance-key" # instance key name
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with the instance."
  type        = bool
  default     = true
}

variable "vpc_id" {
  description = "VPC ID for the EC2 instance"
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of the subnet where the instance will be launched."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the instance will be launched."
  type        = string
}