output "lambda_function_name" {
  description = "Deployed Lambda function name"
  value       = module.lambda.function_name
}

output "lambda_function_arn" {
  description = "Deployed Lambda function ARN"
  value       = module.lambda.function_arn
}

