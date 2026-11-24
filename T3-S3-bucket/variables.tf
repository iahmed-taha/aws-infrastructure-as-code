variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name"{

    description = "the name of the s3 bucket"
    type = string
    default = "task-bucket-11-10"
}

