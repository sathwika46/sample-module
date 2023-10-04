output "private_ip_address" {
    value = aws_instance.example.private_ip
  
}
output "public_ip_adress" {
    value = aws_instance.example.public_ip
  
}