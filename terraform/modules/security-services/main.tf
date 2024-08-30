# create a security group
resource "aws_security_group" "EC2toRDS-sg" {
    name = var.security_group_name
    vpc_id = aws_vpc.vcp_main.id


   ingress  {
       from_port = 8080
       to_port = 8080
       protocol = "tcp"
       cidr_blocks = ["0.0.0.0/0"]
   }
  
   ingress  {
       from_port = 22
       to_port = 22
       protocol = "tcp"
       cidr_blocks = ["0.0.0.0/0"]
   } 
    egress {
       from_port = 0
       to_port = 0
       protocol = "-1"
       cidr_blocks = ["0.0.0.0/0"]
   }
}