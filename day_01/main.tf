resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
 #  count = var.instance_count
  associate_public_ip_address = var.public_ip

  tags = {
    Name = "app-server"
  }
}
