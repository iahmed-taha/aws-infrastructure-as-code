
variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name"
  type        = string
}

variable "instance_name" {
  description = "Tag Name for EC2"
  type        = string
  default     = "Terraform-EC2"
}