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
  access_key = ""
  secret_key = ""
}

module "terraform_aws_lambda" {
    source= "../../"
    filename=var.filename
    function_name=var.function_name
    handler=var.handler
    runtime=var.runtime
}