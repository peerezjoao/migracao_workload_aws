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

variable "vpc_name" {
    type = string
    description = "VPC Name"
    default = "vpc-bootcamp"
}

variable "aws_vpc_cidr_block" {
    type = string
    description = "CIDR block value for the VPC configuration."
    default = "10.0.0.0/16"
}

variable "aws_public_subnet_name" {
    type = string
    description = "Public Subnet Name"
    default = "Public Subnet"
}

variable "aws_availability_zone" {
    type = string
    description = "Availability Zone"
    default = "us-east-1a" 
}

variable "aws_subnet_cidr_block" {
    type = string
    description = "CIDR block value for the public subnet configuration."
    default = "10.0.0.0/24"  
}

variable "tags_for_vpc" {
    type = map(string)
    description = "Tags associated with the VPC for resource identification and organization."
    default = {
      "Project" = "Migration workload to AWS"
      "CreatedAt" = "2024-08-26"
    }
}   