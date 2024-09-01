# create a security group for EC2 to RDS
resource "aws_security_group" "EC2toRDS_sg" {
  name   = var.security_group_name
  vpc_id = var.vpc_id

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Considere restringir isso
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Considere restringir isso
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# create a security group for the database
resource "aws_security_group" "database_security_group" {
    name        = "database_security_group" # Alterado para evitar espaços
    description = "MySQL security group"
    vpc_id      = var.vpc_id

    ingress {
        from_port = 3306
        to_port   = 3306
        protocol  = "tcp"
        security_groups = [aws_security_group.EC2toRDS_sg.id]
    }

    egress {
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
