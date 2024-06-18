output "private_ip" {
  description = "Private ip"
  value       = aws_instance.instance.private_ip
}

output "instance_id" {
  description = "Instance id"
  value       = aws_instance.instance.id
}

output "public_ip" {
  value       = aws_instance.instance.public_ip
  description = "Instance public ip"
}
