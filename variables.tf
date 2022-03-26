variable "filename" {
    type = string
    description = "file name of the lambda"
}
variable "function_name" {
    type = string
    description = "function name for the lambda"
}

variable "handler" {
    type = string
    description = "handler name for the function"
}

variable "runtime" {
    type = string
    description = "runtime of the function"
}