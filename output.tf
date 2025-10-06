output "vpc_id" {
  value = aws_vpc.vpc_techchallenge_fiap_fase3_2153.id
}

output "vpc_cidr" {
  value = aws_vpc.vpc_techchallenge_fiap_fase3_2153.cidr_block
}
output "subnet_public_id" {
  value = aws_subnet.subnet_public[*].id
}

output "subnet_public_arn" {
  value = aws_subnet.subnet_public[*].arn
}