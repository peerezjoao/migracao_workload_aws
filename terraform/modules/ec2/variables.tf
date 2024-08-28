variable "instance_name" {
    type = string
    description = "The name of the Amazon EC2 instance."
    default = "ec2_app"
}

variable "instance_type" {
    type = string
    description = "Specifies the type of instance to be used."
    default = "t2.micro"
}

variable "subnet_id" {
    type = string
    description = "The ID of the subnet in which the instance will be launched."
    default = "t2.micro"
}

variable "security_group_id" {
    type = string
    description = "The ID of the security group in which the instance will be launched."
    default = ""
}

variable "key_name" {
    type = string
    description = "The name of the key pair associated with the instances."
    default = ""
}

variable "tags_for_instance" {
    type = map(string)
    description = "Tags associated with the instance for resource identification and organization."
    default = {
      "Project" = "Migration workload to AWS"
      "CreatedAt" = "2024-08-26"
    }
}