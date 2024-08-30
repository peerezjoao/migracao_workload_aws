# create an internet gateway
resource "aws_internet_gateway" "internet_gateway" {
    vpc_id =var.vpc_id

}
