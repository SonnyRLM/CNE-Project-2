provider "aws" {
  region                  = var.AWS_REGION
  shared_credentials_file = "~/.aws/credentials"
}

module "aws_vpc" {
  source = "./VPC"
}

module "security_group" {
  source = "./SG"
  name = "WebServerSG"
  vpc_id_sg = module.aws_vpc.public_subnetA_id
}

module "ec2_instances" {
  source = "./EC2"
  public_subnet_id = module.aws_vpc.public_subnetA_id
  vpc_security_group_ids = [module.security_group.vpc_id_sg]
}

module "RDS_instances" {
  username = var.username
  password = var.password
  source = "./RDS"
  subnetA_id = module.aws_vpc.public_subnetA_id
  subnetB_id = module.aws_vpc.public_subnetB_id
  vpc_security_group_ids = [module.security_group.vpc_id_sg]
}