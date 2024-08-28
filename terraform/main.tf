provider "aws" {
    region = var.aws_region
    profile = var.aws_profile
}

module "vpc" {
    source = "./modules/vpc"

}

module "ec2" {
    source = "./modules/ec2"

    subnet_id = module.vpc.public_subnet_id.id
}