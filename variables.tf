variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
  default     = "assignment5-test-lambda"
}

variable "runtime" {
  description = "Lambda runtime environment"
  type        = string
  default     = "python3.12"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

