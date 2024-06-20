# Lambda function with https endpoint
module "lambda_function" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "7.4.0"

  function_name = var.name
  description   = "Example lambda with logging"
  handler       = "handler.lambda_handler"
  runtime       = "python3.12"
  timeout       = 30
  publish       = true
  layers        = ["arn:aws:lambda:${local.region_name}:017000801446:layer:AWSLambdaPowertoolsPythonV2:69"]
  create_lambda_function_url = true
  source_path = "./lambda_function"
  create_role = true
  environment_variables = {
    POWERTOOLS_SERVICE_NAME = var.name
  }
  tags = {
    Name = var.name
  }
}