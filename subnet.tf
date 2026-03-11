#Public-subnet
resource "aws_subnet" "public-subnet" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "Public-subnet"
  }
}

#private-subnet-1 (Application)
resource "aws_subnet" "private-subnet1" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-south-1b"
  tags = {
    Name = "Private-subnet-1"
  }
}

#private-subnet-2 (Database)
resource "aws_subnet" "private-subnet-2" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-south-1c"
  tags = {
    Name = "Private-subnet-2"
  }
}