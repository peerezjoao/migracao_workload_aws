provider "aws" {
    region = var.aws_region
    profile = var.aws_profile
}

module "vpc" {
    source = "./modules/vpc"
}

module "keypair" {
    source = "./modules/keypair"
}

module "security" {
    source = "./modules/security-services"

    vpc_id = module.vpc.vpc_id
}

module "internet_gateway" {
    source = "./modules/internet-gateway"

    vpc_id = module.vpc.vpc_id
}

module "route_table" {
    source = "./modules/route-table"

    vpc_id = module.vpc.vpc_id
    internet_gateway_id = module.internet_gateway.internet_gateway_id
}

module "route_table_association" {
    source = "./modules/route-table-association"

    subnet_id = module.vpc.public_subnet_id
    public_route_table_id = module.route_table.route_table_id
}

module "ec2" {
    source = "./modules/ec2"

    subnet_id = module.vpc.public_subnet_id
    key_name = module.keypair.keyapp_kp
    security_group_id = [module.security.security_group_id]
}