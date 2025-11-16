resource "aws_route_table" "my_route" {
  tags = {
    Name = "dinu-route"
    }
  vpc_id = aws_vpc.my_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
    }
  }
