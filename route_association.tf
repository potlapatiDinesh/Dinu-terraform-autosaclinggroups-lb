resource "aws_route_table_association" "my_assoication1" {
subnet_id = aws_subnet.my_subnet1.id
route_table_id = aws_route_table.my_route.id
}


resource "aws_route_table_association" "my_assoication2" {
subnet_id = aws_subnet.my_subnet2.id
route_table_id = aws_route_table.my_route.id
}
