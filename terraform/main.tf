provider "aws" {
    region = var.aws_region
    profile = var.aws_profile
}

# create a VPC 
resource "aws_vpc" "vcp_main" {
    cidr_block = var.aws_vpc_cidr_block

    tags = merge(var.tags_for_vpc, {
        "Name" = var.vpc_name
        "Fields" = join("_", values(var.tags_for_vpc))
    })
}

# create a public subnet
resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.vcp_main.id
    availability_zone = element(var.aws_availability_zone, 0)
    cidr_block = element(var.aws_public_subnet_cidr_block, 0)

    tags = merge(var.tags_for_vpc, {
        "Name" = var.aws_public_subnet_name
        "Fields" = join("_", values(var.tags_for_vpc))
    })
}

# create a private subnet
resource "aws_subnet" "private_subnet" {
    count = length(var.aws_availability_zone)
    vpc_id = aws_vpc.vcp_main.id
    availability_zone = var.aws_availability_zone[count.index]
    cidr_block = var.aws_private_subnet_cidr_block[count.index]

    tags = merge(var.tags_for_vpc, {
        "Name" = "${var.aws_private_subnet_name}-${count.index + 1}"
        "Fields" = join("_", values(var.tags_for_vpc))
    })
}

# create a security group
resource "aws_security_group" "web" {
  
    name = "http_acess"
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

    tags = merge(var.tags_for_instance, {
        "Fields" = join("_", values(var.tags_for_instance))
    })
}

# get the last ami ubuntu
data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
    filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

# create a aws instance 
resource "aws_instance" "aws_app" {

    ami = data.aws_ami.ubuntu.id
    instance_type = "t2.micro"
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [aws_security_group.web.id]

    associate_public_ip_address = true
    
    tags = merge(var.tags_for_instance, {
        "Name" = "awsuse1app01"
        "Fields" = join("_", values(var.tags_for_instance))
    })
}
