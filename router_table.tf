resource "aws_route_table" "router_table" {
  vpc_id = aws_vpc.vpc_techchallenge_fiap_fase3_2153.id
  route {
    cidr_block = aws_vpc.vpc_techchallenge_fiap_fase3_2153.cidr_block #rota para dentro da vpc, permitindo que as subnets se comuniquem entre si
    gateway_id = "local"
  }
  route {
    cidr_block = "0.0.0.0/0" #rota padrao para internet, permitindo que as subnets publicas acessem a internet
    gateway_id = aws_internet_gateway.internet_gateway.id
  }
}
resource "aws_route_table_association" "route_table_association_0" {
  subnet_id      = aws_subnet.subnet_public[0].id
  route_table_id = aws_route_table.router_table.id
}
resource "aws_route_table_association" "route_table_association_1" {
  subnet_id      = aws_subnet.subnet_public[1].id
  route_table_id = aws_route_table.router_table.id
}
resource "aws_route_table_association" "route_table_association_2" {
  subnet_id      = aws_subnet.subnet_public[2].id
  route_table_id = aws_route_table.router_table.id
}