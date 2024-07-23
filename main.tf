provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = "nepra-statefile-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dynamodb-state-lock"
  }
}


module "network" {
  source = "./module/network"
}

module "security_groups" {
  source = "./module/security_groups"
  vpc_id = module.network.vpc_id
}

module "instances" {
  source            = "./module/instances"
  private_subnet_id = module.network.private_subnet_id
  public_subnet_id  = module.network.public_subnet_1_id
  private_sg_id     = module.security_groups.private_sg_id
  bastion_sg_id     = module.security_groups.bastion_sg_id
  jenkins_sg_id     = module.security_groups.jenkins_sg_id
  key_name          = "nepra"
  ami_id               = "ami-0ad21ae1d0696ad58"
  instance_type     = "t2.micro"
}

