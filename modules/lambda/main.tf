resource "aws_iam_role" "lambda_role" {
  name = "${var.function_name}-execution-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "basic_execution" {
  role = aws_iam_role.lambda_role.name

  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_lambda_function" "this" {
  function_name = var.function_name
  runtime       = var.runtime
  handler       = "lambda_function.lambda_handler"

  filename         = var.zip_path
  source_code_hash = filebase64sha256(var.zip_path)

  role = aws_iam_role.lambda_role.arn

  depends_on = [
    aws_iam_role_policy_attachment.basic_execution
  ]
}