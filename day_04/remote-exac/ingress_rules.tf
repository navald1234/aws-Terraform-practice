resource "aws_vpc_security_group_ingress_rule" "web_sg" {
    security_group_id = aws_security_group.web_sg.id
    ip_protocol = "tcp"
    from_port = 80
    to_port = 80
    cidr_ipv4 = "0.0.0.0/0"

}
resource "aws_vpc_security_group_ingress_rule" "web_sg_ssh" {
    security_group_id = aws_security_group.web_sg.id
    ip_protocol = "tcp"
    from_port = 22
    to_port = 22
    cidr_ipv4 = "0.0.0.0/0"

}
resource "aws_vpc_security_group_ingress_rule" "web_sg_https" {
    security_group_id = aws_security_group.web_sg.id
    ip_protocol = "tcp"
    from_port = 443
    to_port = 443
    cidr_ipv4 = "0.0.0.0/0"

}
resource "aws_vpc_security_group_ingress_rule" "web_sg_all_icmp" {
    security_group_id = aws_security_group.web_sg.id
    ip_protocol = "icmp"
    from_port = -1
    to_port = -1
    cidr_ipv4 = "0.0.0.0/0"

}
resource "aws_vpc_security_group_ingress_rule" "web_sg_custom_tcp" {
    security_group_id = aws_security_group.web_sg.id
    ip_protocol = "tcp"
    from_port = 8080
    to_port = 8080
    cidr_ipv4 = "0.0.0.0/0"

}