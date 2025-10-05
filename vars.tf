
variable "project_name" {
  default = "techchallenge-fiap-fase3-2153"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "cidr_block_vpc" {
  default = "10.0.0.0/16"
}

variable "tags" {
  default = {
    Name = "vpc_techchallenge_fiap_fase3_2153"
  }
}

variable "disk_size" {
  default = 20
}

variable "instance_type" {
  default = "t3.medium"
}