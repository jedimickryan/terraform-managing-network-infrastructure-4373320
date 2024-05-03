# Resource for internet gateway

resource "aws_internet_gateway" "public" {
  vpc_id = aws_vpc.dev.id

  tags = {
    Name = var.igw
  }

}

# Route table for public subnets

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.dev.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.public.id
  }

  tags = {
    Name = var.public_rtb
  }

}

# Route table association with public subnets

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.dev[0].id # [0] is referrencing subnet 0 with is the public one. 
  route_table_id = aws_route_table.public.id
}