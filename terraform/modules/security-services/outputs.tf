output "sg_name" {
    value = aws_security_group.EC2toRDS_sg.name
    description = "Name of the security group."
}

# export the id from sg
output "security_group_id" {
  value = aws_security_group.EC2toRDS_sg.id
}

# export the name from database security group
output "database_security_group_id" {
  value = aws_security_group.database_security_group.id
  description = "name of database security group."
}
