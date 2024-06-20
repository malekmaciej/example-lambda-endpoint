data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

locals {
  region_name = data.aws_region.current.name
}