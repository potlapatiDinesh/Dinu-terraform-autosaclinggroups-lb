resource "aws_launch_template" "my_template" {
name = "my-temp"
description = "this is autoscale temolate"
image_id = "ami-0157af9aea2eef346"
instance_type = "t2.micro"
key_name = "Dinesh"
placement {
availability_zone = "us-east-1a"
}
vpc_security_group_ids = [aws_security_group.my_sg.id]
tags = {
Name = "dimu_project"
}


resource "aws_elb" "my_elb" {
name = "my-elb"
subnets = [aws_subnet.my_subnet1.id, aws_subnet.my_subnet2.id]
security_groups = aws_security_group.my_sg.id
listener {
instance_port = 80
instance_protocol = "http"
lb_port = 80
lb_protocol = "http"
}
tags = {
Name = "my_tags"
}

resource "aws_auto_scaling_group" "my_asg" {
name = "dinu-asg"
launch_template {
id = aws_launch_template.my_template.id
version = "$Latest"
}
min_size = 1
max_size = 5
desired_capacity = 2
health_check_type = "EC2"
load_balaners = [aws_elb.my_elb.name]
vpc_zone_identifer = [aws_subnet.my_subnet1.id, aws_subnet.my_subnet2.id]
}
