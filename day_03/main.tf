resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
 #  count = var.instance_count
  associate_public_ip_address = var.public_ip
  key_name = "temp"
  vpc_security_group_ids = [aws_security_group.web_sg.id]

user_data = <<-EOF
#!/bin/bash

sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

echo "Creating a sample webpage"
echo "<html><h1>Welcome to My Webpage</h1></html>" > /var/www/html/index.html
EOF



  tags = {
    Name = "app-server"
  }
}