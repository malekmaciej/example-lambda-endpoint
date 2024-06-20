variable "name" {
  description = "Lambda function name"
  type        = string
  default     = "example"
}

variable "runtime" {
  description = "Lambda function runtime"
  type        = string
  default     = "python3.12"
}

variable "lambda_description" {
  description = "Lambda function description"
  type        = string
  default     = "Example lambda with logging"
}

variable "timeout" {
  description = "Lambda function timeout"
  type        = number
  default     = 30
}