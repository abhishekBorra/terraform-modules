terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = lookup(var.configuration_values, var.application_instance_code).aws_region
}

module "ec2_first_instance" {
    source = "./modules/ec2"

    ec2_instance_type = lookup(var.configuration_values, var.application_instance_code).ec2_instance_type
    application_name = var.application_name
}

module "ec2_second_instance" {
    source = "./modules/ec2"

    ec2_instance_type = lookup(var.configuration_values, var.application_instance_code).ec2_instance_type
    application_name = var.application_name
}

module "s3_bucket" {
    source = "./modules/s3"

    s3_bucket_name = lookup(var.configuration_values, var.application_instance_code).s3_bucket_name
    application_name = var.application_name
}