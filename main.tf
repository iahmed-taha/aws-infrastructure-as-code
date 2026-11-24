


module "lambda" {
  source = "./modules/lambda"
  function_name = var.function_name
  runtime       = var.runtime
  zip_path      = "${path.module}/lambda.zip"
}

output "lambda_name" {
  value = module.lambda.function_name
}

output "lambda_arn" {
  value = module.lambda.function_arn
}

