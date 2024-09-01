variable "security_group_name" {
    type = string
    description = "Security Group Name for this application"
    default = "EC2toRDS"
}

variable "vpc_id" {
    type = string
    description = "The name of VPC"
    default = "vpc"
}
