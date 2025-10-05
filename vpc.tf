resource "aws_vpc" "vpc_techchallenge_fiap_fase3_2153" {
  cidr_block           = var.cidr_block_vpc
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = var.tags
}