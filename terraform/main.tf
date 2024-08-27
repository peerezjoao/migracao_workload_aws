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
    vpc_id = aws_vpc.vcp-main.id
    availability_zone = var.aws_availability_zone[count.index]
    cidr_block = var.aws_private_subnet_cidr_block[count.index]

    tags = merge(var.tags_for_vpc, {
        "Name" = "${var.aws_private_subnet_name}-${count.index + 1}"
        "Fields" = join("_", values(var.tags_for_vpc))
    })
}
