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

variable "aws_vpc_cidr_block" {
    type = string
    description = "CIDR block value for the VPC configuration."
    default = "10.0.0.0/16"
}

variable "tags_for_vpc" {
    type = map(string)
    description = "Tags associated with the VPC for resource identification and organization."
    default = {
      "Project" = "Migration workload to AWS"
      "CreatedAt" = "2024-08-26"
    }
}   