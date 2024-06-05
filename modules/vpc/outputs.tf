output "subnet_a_id" {
  value       = aws_subnet.subnet_a.id
  sensitive   = false
  description = "Subnet A para LB"
}

output "subnet_b_id" {
  value       = aws_subnet.subnet_b.id
  sensitive   = false
  description = "Subnet B para LB"
}

