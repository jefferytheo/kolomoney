provider "aws" {
  region = var.region
}

module "vpc" {
  source               = "./vpc"
  cidr_block           = var.vpc_cidr
  public_subnet_count  = var.public_subnet_count
  private_subnet_count = var.private_subnet_count
  availability_zones   = var.availability_zones
}
module "lambda" {
  source = "./lambda"
  vpc_cidr_block = var.vpc_cidr
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
}

module "rds" {
  source = "./rds"
  subnet_ids = module.vpc.private_subnets
  security_group_id = module.vpc.db_sg_id
}
module "iam" {
  source = "./iam"
  region = var.region
}

module "amplify" {
  source = "./amplify"
  iam_role_arn = module.iam.amplify_role_arn
  github_access_token = var.github_access_token 
  github_oauth_token = var.github_oauth_token 
}

