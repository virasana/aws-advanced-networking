locals {
  common_tags = {
    account     = var.aws_account
    aws_region  = var.aws_region
    category    = var.tags_category
    environment = var.environment
    owner       = var.tags_owner
  }
}