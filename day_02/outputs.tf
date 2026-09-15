output "public_ip" {
    description = "This is Public ip"
    value = aws_instance.app_server.public_ip
  
}
output "private_ip" {
    description = "This is private ip"
    value = aws_instance.app_server.private_ip
}
output "public_dns" {
    description = "This is dns"
    value = aws_instance.app_server.public_dns
  
}