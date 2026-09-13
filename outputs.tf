output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}
output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}
output "ec2_public_ip" {
  description = "Public IP address of the web server"
  value       = aws_instance.web.public_ip
}
output "ec2_public_dns" {
  description = "Public DNS name of the web server"
  value       = aws_instance.web.public_dns
}