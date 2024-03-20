provider "aws" {
    region = "us-east-1"
    profile = "default"  
}

terraform {
    backend "S3" {
        bucket = "8amcloudbinaryy"
        key = "projects_statefile/tterraform.state"
        region = "us-east-1"
    }
}

#Continuous Integration - Jenkins
resource "aws_instance" "cloudbinary_Jenkins" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = var.subnet_id
    vpc_security_group_ids = var.vpc_security_group_ids
    iam_instance_profile = var.iam_instance_profile
    user_data = file("jenkins.sh")
    tags = {
        Name  = "cloudbinary_Jenkins"
        Createdby = "Terraform"
    }
  
}