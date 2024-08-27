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
    default = "vpc-app"
}

variable "aws_vpc_app_cidr_block" {
    type = string
    description = "CIDR block value for the VPC configuration."
    default = "10.0.0.0/16"
}

variable "tags_for_vpc" {
    type = map(string)
    description = "Tags associated with the VPC for resource identification and organization."
    default = {
      "Project" = "Migration"
      "CreatedAt" = "2024-08-27"
    }
}   

variable "aws_public_subnet_name" {
    type = string
    description = "Public Subnet Name"
    default = "Public Subnet"
}

variable "aws_availability_zone" {
    type = list(string)
    description = "Availability Zone"
    default = ["us-east-1a","us-east-1b"] 
}

variable "aws_public_subnet_cidr_block" {
    type = list(string)
    description = "CIDR block value for the public subnet configuration."
    default = ["10.0.0.0/24"]  
}

variable "aws_private_subnet_name" {
    type = string
    description = "Private Subnet Name"
    default = "Private Subnet"
}

variable "aws_private_subnet_cidr_block" {
    type = list(string)
    description = "CIDR block value for the private subnet configuration."
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}