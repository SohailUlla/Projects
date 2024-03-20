variable "ami" {
    default = "ami-0c7217cdde317cfec"  
}

variable "instance_type" {
    default = "t2.medium"
}

variable "key_name" {
    default = "aws_nv_10a" 
}

variable "subnet_id" {
    default = "subnet-0c388de72ca2f6854"
}

variable "vpc_security_group_ids" {
    default = "sg-0ed61f9e6788e8cff"
}

variable "iam_instance_profile" {
    default = "B10SSM"
}
