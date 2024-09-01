# DB Subnet Group
resource "aws_db_subnet_group" "my_db_subnet_group" {
  name        = "my-db-subnet-group"
  subnet_ids  = var.private_subnet_ids
  description = "My DB subnet group for RDS"
}

# Create a MySQL RDS instance with the specified configuration
resource "aws_db_instance" "aws_mysql" {
  allocated_storage      = var.rds_allocated_storage
  db_name               = var.rds_name
  engine                = var.engine_rds
  engine_version        = var.engine_rds_version
  instance_class        = var.rds_instance_class
  username              = var.rds_user
  password              = var.rds_password
  vpc_security_group_ids = var.security_group_id 
  db_subnet_group_name  = aws_db_subnet_group.my_db_subnet_group.name 

  availability_zone     = var.rds_availability_zone
  port                  = var.rds_default_port
}
