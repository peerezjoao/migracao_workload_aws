variable "aws_region" {
    type = string
    description = "AWS region where the infrastructure will be deployed."
    default = "us-east-1"
}

variable "aws_profile" {
    type = string
    description = "AWS profile used for Terraform authentication."
    default = "tf_user"
}