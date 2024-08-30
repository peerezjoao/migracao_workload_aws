# create a route table for application
resource "aws_route_table" "public_rt" {
    vpc_id = var.vpc_id

   route  {
       cidr_block = var.cidr_block_route_table
       gateway_id = var.internet_gateway_id
   }
}
