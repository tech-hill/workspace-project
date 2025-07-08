variable "aws_region" {
  default = "us-east-1"
}

variable "project_name" {
  default = "dev"
}

variable "db_username" {
  default = "admin"
}

variable "db_password_secret_name" {
  default = "dev-mysql-password"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami" {
  default = "ami-000ec6c25978d5999" # Amazon Linux 2 AMI in us-east-1
}
