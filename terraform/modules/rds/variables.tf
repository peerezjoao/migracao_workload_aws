variable "engine_rds" {
  type        = string
  description = "The application utilizes a database engine hosted on Amazon Relational Database Service (RDS)."
  default     = "mysql"
}

variable "rds_name" {
  type        = string
  description = "The name of application in Amazon Relational Database Service (RDS)."
  default     = "app_bd"
}

variable "rds_allocated_storage" {
  type        = number
  description = "The storage capacity of application in Amazon Relational Database Service (RDS)."
  default     = 20
}

variable "engine_rds_version" {
  type        = string
  description = "The version of application in Amazon Relational Database Service (RDS)."
  default     = "8.0.35"
}

variable "rds_instance_class" {
  type        = string
  description = "The instance class of application in Amazon Relational Database Service (RDS)."
  default     = "db.t3.micro"
}

variable "rds_user" {
  type        = string
  description = "The user of application in Amazon Relational Database Service (RDS)."
  default     = "admin"
}

variable "rds_password" {
  type        = string
  description = "The user of application in Amazon Relational Database Service (RDS)."
  default     = "admin123456"

}

variable "rds_availability_zone" {
  type        = string
  description = "The AZ of application in Amazon Relational Database Service (RDS)."
  default     = "us-east-1a"
}

variable "rds_default_port" {
  type        = number
  description = "The AZ of application in Amazon Relational Database Service (RDS)."
  default     = 3306
}

variable "security_group_id" {
  type        = list(string)
  description = "The ID of the security group in which the instance will be launched."
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "The ID of the private in which the instance will be launched."
}
