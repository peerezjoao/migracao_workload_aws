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