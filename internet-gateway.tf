resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc_techchallenge_fiap_fase3_2153.id #vpc na qual o igw sera associado
}