variable "vpc_id" {
  description = "The VPC ID where the SG will be created"
  type        = string
}

variable "instance_id" {
  description = "The EC2 instance ID to attach the SG"
  type        = string
}
