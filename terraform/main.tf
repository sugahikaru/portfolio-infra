module "vpc" {
  source = "./modules/vpc"

  vpc_cidr         = var.vpc_cidr
  vpc_name         = var.vpc_name

  public_1a_cidr   = var.public_1a_cidr
  public_1c_cidr   = var.public_1c_cidr
  private_1a_cidr  = var.private_1a_cidr
  private_1c_cidr  = var.private_1c_cidr

  az_1a            = var.az_1a
  az_1c            = var.az_1c
}

module "ec2" {
  source             = "./modules/ec2"
  subnet_id          = module.vpc.public_subnet_1a_id
  security_group_ids = [module.vpc.web_sg_id]
  key_name           = var.key_name
  iam_instance_profile = module.iam.iam_instance_profile_name
}

module "rds" {
  source                = "./modules/rds"
  subnet_ids            = module.vpc.private_subnet_ids
  vpc_security_group_ids = [module.vpc.rds_sg_id]
  db_username            = var.db_username
  db_password            = var.db_password
}

output "rds_endpoint" {
  value = module.rds.rds_endpoint
}

module "cloudwatch" {
  source      = "./modules/cloudwatch"
  instance_id = module.ec2.instance_id
}

module "alb" {
  source              = "./modules/alb"
  vpc_id              = module.vpc.vpc_id
  subnet_ids          = [module.vpc.public_subnet_1a_id, module.vpc.public_subnet_1c_id]
  security_group_ids  = [module.vpc.web_sg_id]
  target_instance_id  = module.ec2.instance_id
}

module "waf" {
  source   = "./modules/waf"
  alb_arn  = module.alb.alb_arn
}

module "iam" {
  source      = "./modules/iam"
  role_name   = "S3AccessRole"
  policy_name = "s3access"
  bucket_name = "tf-handson-hikaru"
}