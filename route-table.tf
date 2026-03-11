
#creating route table
resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = "public-route-table"
  }
}

#Route to internet-Gateway
resource "aws_route" "public-internet-route" {
  route_table_id = aws_route_table.public-route-table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.my-igw.id
}

#associate to Public-subnet
resource "aws_route_table_association" "public_subnet_association" {
  subnet_id = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.public-route-table.id
}

