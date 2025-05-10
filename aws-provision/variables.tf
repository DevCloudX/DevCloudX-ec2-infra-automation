variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {
  default = "us-east-1"
}

variable "private_key_path" {
  description = "Path to the private PEM key"
  type        = string
}

variable "instance_ips" {
  description = "Public IPs of the EC2 instances"
  type        = list(string)
}
