output "vpc_id" {
    value = aws_vpc.vpc_app.id
    description = "ID of the VPC"
}

output "public_subnet_id" {
    value = aws_subnet.public_subnet.id
    description = "ID of the public subnet"
}

output "private_subnet_ids" {
    value = aws_subnet.private_subnet[*].id
    description = "IDs of the private subnets"
}