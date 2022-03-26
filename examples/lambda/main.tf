terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA2EFS3QBOFR6FDO6P"
  secret_key = "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"
}

module "terraform_aws_lambda" {
    source= "../../"
    filename=var.filename
    function_name=var.function_name
    handler=var.handler
    runtime=var.runtime
}