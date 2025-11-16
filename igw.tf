resource "aws_internet_gateway" "my_igw" {
tags = {
Name = "dinu-igw"
}
vpc_id = aws_vpc.my_vpc.id
}
