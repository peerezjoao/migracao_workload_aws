variable "subnet_id" {
    type = string
    description = "The ID of the subnet in which the instance will be launched."
}

variable "public_route_table_id" {
    type = string
    description = "The ID of the route table."
}