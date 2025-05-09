variable "aws_region" {
  default = "us-east-1"
}

variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "vpc_name" {}
variable "vpc_cidr" {}

variable "subnet_name" {}
variable "subnet_cidr" {}
variable "aws_az" {
  default = "us-east-1a"
}

variable "security_group_name" {}

variable "ec2_name" {}
variable "ec2_ami_id" {
  default = "ami-0c02fb55956c7d316" # Amazon Linux 2 in us-east-1
}

variable "ec2_instance_type" {
  default = "t2.micro"
}

variable "key_pair_name" {}
