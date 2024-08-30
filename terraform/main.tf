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
}

module "ec2" {
    source = "./modules/ec2"

    subnet_id = module.vpc.public_subnet_id.id
    key_name = module.keypair.keyapp_kp.key_name
}