variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "runtime" {
  description = "AWS Lambda runtime"
  type        = string
  default     = "python3.12"
}

variable "zip_path" {
  description = "Path to the zipped Lambda source code"
  type        = string
}