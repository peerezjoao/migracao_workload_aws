output "internet_gateway_name" {
    value = aws_internet_gateway.internet_gateway
    description = "Output gateway internet name"
}

output "internet_gateway_id" {
    value = aws_internet_gateway.internet_gateway.id
    description = "Output gateway intenernet gateway id."
}