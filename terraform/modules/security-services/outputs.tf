output "sg_name" {
    value = aws_security_group.EC2toRDS-sg.name
    description = "Name of the security group."
}