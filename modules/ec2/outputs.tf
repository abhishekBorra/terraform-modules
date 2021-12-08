output "ec2_instance_arn" {
  description = "ARN of the ec2 instance"
  value       = aws_instance.ec2_instance.arn
}