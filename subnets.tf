resource "aws_subnet" "my_subnet1" {
tags = {
Name = "subnet1"
}
vpc_id = aws_vpc.my_vpc.id
availability_zone = "us-east-1a"
map_public_ip_on_launch = true
cidr_block = "10.0.0.0/26"
}


resource "aws_subnet" "my_subnet2" {
tags = {
Name = "subnet2"
}
vpc_id = aws_vpc.my_vpc.id
availability_zone = "us-east-1b"
map_public_ip_on_launch = true
cidr_block = "10.0.1.0/26"
}
