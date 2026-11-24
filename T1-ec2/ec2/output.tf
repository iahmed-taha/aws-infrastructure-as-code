output "public_ip" {
  value = aws_instance.server.public_ip
}

output "instance_id" {
  value = var.ami_id
}

output "primary_network_interface_id" {
  description = "Primary network interface ID of the EC2 instance"
  value       = aws_instance.server.primary_network_interface_id
}