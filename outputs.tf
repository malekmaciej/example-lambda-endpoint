output "lambda_url" {
  description = "Lambda function URL"
  value       = module.lambda_function.lambda_function_url
}