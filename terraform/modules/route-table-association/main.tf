# create a route table association to the application
resource "aws_route_table_association" "route_table_association" {
    subnet_id = var.subnet_id
    route_table_id = var.public_route_table_id

}
