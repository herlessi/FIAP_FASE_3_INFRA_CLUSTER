resource "aws_subnet" "subnet_public" {

  count                   = 3 #loop - criando 3 subnets publicas
  vpc_id                  = aws_vpc.vpc_techchallenge_fiap_fase3_2153.id
  cidr_block              = cidrsubnet(aws_vpc.vpc_techchallenge_fiap_fase3_2153.cidr_block, 4, count.index)
  map_public_ip_on_launch = true #auto assign public ip
  availability_zone       = ["us-east-1a", "us-east-1b", "us-east-1c"][count.index]

  tags = var.tags
}