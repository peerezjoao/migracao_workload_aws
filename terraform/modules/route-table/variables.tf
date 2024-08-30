variable "vpc_id" {
    type = string
    description = "The name of VPC"
}

variable "cidr_block_route_table" {
    type = string
    description = ""
    default = "0.0.0.0/0"
}

variable "internet_gateway_id" {
    type = string
    description = ""
}