output "function_name" {
    value= module.terraform_aws_lambda.lambda.function_name
}
output "lambda_arn" {
    value= module.terraform_aws_lambda.lambda.arn
}
output "lambda_architectures" {
    value= module.terraform_aws_lambda.lambda.architectures
}
output "lambda_id" {
    value= module.terraform_aws_lambda.lambda.id
}
output "lambda_s3_bucket" {
    value= module.terraform_aws_lambda.lambda.s3_bucket
}
output "lambda_version" {
    value= module.terraform_aws_lambda.lambda.version
}