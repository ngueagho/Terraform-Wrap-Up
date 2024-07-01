terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"

  # only required for non virtual hosted-style endpoint use case.
  # https://registry.terraform.io/providers/hashicorp/aws/latest/docs#s3_force_path_style
  s3_use_path_style           = false
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3             = "http://s3.localhost.localstack.cloud:4566"
    ec2            = "http://ec2.localhost.localstack.cloud:4566"
    elbv2          = "http://localhost:4566"
    iam            = "http://localhost:4566"
    elb            = "http://localhost:4566"
    dynamodb       = "http://localhost:4566"
    lambda         = "http://localhost:4566"
    sqs            = "http://localhost:4566"
    sns            = "http://localhost:4566"
    apigateway     = "http://localhost:4566"
    cloudformation = "http://localhost:4566"
  }
}

module "ec2"{
  source = "./modules/ec2"
  n1_id = module.vpc.n1_id
  n2_id = module.vpc.n2_id
  n3_id = module.vpc.n3_id
  n4_id = module.vpc.n4_id
}
module "vpc"{
  source = "./modules/vpc"

  vpc_id = module.vpc.vpc_id
  subneta_id = module.vpc.subneta_id
  subnetb_id = module.vpc.subnetb_id

}
module "volumes"{
  source = "./modules/volumes"

  computer1_id = module.ec2.computer1_id
  computer2_id = module.ec2.computer2_id
  computer3_id = module.ec2.computer3_id
  computer4_id = module.ec2.computer4_id
  aws_ebs_volumea_id = module.volumes.aws_ebs_volumea_id
  aws_ebs_volumeb_id = module.volumes.aws_ebs_volumeb_id
  aws_ebs_volumec_id = module.volumes.aws_ebs_volumec_id
  aws_ebs_volumed_id = module.volumes.aws_ebs_volumed_id
}


module "sec_group"{
  source = "./modules/sec_group"
  vpc_id = module.vpc.vpc_id
}
