resource "aws_key_pair" "custom_key" {
  key_name   = "custom-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCsecuSviWN64s/BAUDI0I7AhMKkVsed2qQwoVXK7FGVxjtbtWO0OcE4NGEZz0qOOyMHAPKbm8c2lCjxTmr55m9Oyf/l1UYAJMmOp+JuGintmJGcxoSh28ITGsyeUXpTQI4DxYHhHiLVQcNnY4NxKLCITKL61i2IGcBQ4qCQO/VjoQ05eAb3ZQvMWqSN7vSFgETrFHC/z9EKRMG1Pq6GPMY6v+tnvBlfGbKbwHZXRRLpQ/i9oaH3J0PHcO2N3SC6Y609OTCDGdY463iBbydAjMck/61PRBsWAjYCn9bKyf/VmBtGtI9s+72I51NlvIyn2LiaQ8cdgJsYkx7Y6ZCa3MTd6ji0O5R5ekQp5Xx4sF04VcazDWiqETnVIuBZJJ4CSzfdmwzGmSLah62vfQDRuWMYibZ4eHmYex8117Ho2eoYbsJR+J6owv6GAwtUvQFDrIQKFkRI1gzxgnDcp3qzV4KM3aDKrfkMh/fElT6SuGIB072yzL4xtbeKe7Ae1pfRNc= naval@Navalpc"
}

resource "aws_instance" "app_server" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  # count                       = var.instance_count
  associate_public_ip_address = var.public_ip
  key_name                    = "custom-key"
  vpc_security_group_ids      = [aws_security_group.web_sg.id]

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install -y nginx",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx",
      "echo 'Hello from Terraform remote-exec!' | sudo tee /usr/share/nginx/html/index.html"
    ]

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ec2-user"
    private_key = file("C:\\Users\\naval\\OneDrive\\Desktop\\terraform\\day_04\\file_provisners\\custom-key")
    timeout     = "4m"
  }
  }

  # user_data = <<-EOF
  #   #!/bin/bash
  #   sudo yum install httpd -y
  #   sudo systemctl start httpd
  #   sudo systemctl enable httpd
  #   echo "Creating a sample webpage"
  #   echo "<html><h1>Welcome to My Webpage</h1></html>" > /var/www/html/index.html
  # EOF

  tags = {
    Name = "app-server"
  }
}