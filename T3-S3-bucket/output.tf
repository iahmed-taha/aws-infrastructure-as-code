
output "bucket_name" {
  description = "Created S3 bucket name"
  value       = module.s3_bucket.bucket_name
}

output "bucket_arn" {
  description = "Created S3 bucket ARN"
  value       = module.s3_bucket.bucket_arn
}
