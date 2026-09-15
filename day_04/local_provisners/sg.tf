resource "aws_security_group" "web_sg" {
  name        = "web-server-sg"
  description = "Security group for web server"
  vpc_id      = "vpc-0cee59368ac4cb17e" 

  tags = {
    Name = "allow_tls"
  }
}
