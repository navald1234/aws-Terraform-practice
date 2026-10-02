resource "aws_vpc_security_group_egress_rule" "web_sg" {
    security_group_id = aws_security_group.web_sg.id
    ip_protocol = -1
    cidr_ipv4 = "0.0.0.0/0"
  
}