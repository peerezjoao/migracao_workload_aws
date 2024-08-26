provider "aws" {
    region = var.aws_region
    profile = var.aws_profile
}

# create a VPC 
resource "aws_vpc" "vcp-main" {
    cidr_block = var.aws_vpc_cidr_block

    tags = merge(var.tags_for_vpc, {
        "Name" = var.vpc_name
        "Fields" = join("_", values(var.tags_for_vpc))
    })
}

# create a public subnet
resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.vcp-main.id
    availability_zone = var.aws_availability_zone
    cidr_block = var.aws_subnet_cidr_block

    tags = merge(var.tags_for_vpc, {
        "Name" = var.aws_public_subnet_name
        "Fields" = join("_", values(var.tags_for_vpc))
    })
}
