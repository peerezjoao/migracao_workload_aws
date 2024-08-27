provider "aws" {
    region = var.aws_region
    profile = var.aws_profile
}

module "vpc" {
    source = "./modules/vpc"
    
}