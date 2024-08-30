output "internet_gateway_name" {
    value = aws_internet_gateway.gateway.id
    description = "Output gateway internet name"
}