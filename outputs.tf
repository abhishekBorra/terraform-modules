output "ec2_first_instance_arn" {
  description = "ARN of the first ec2 instance"
  value       = module.ec2_first_instance.ec2_instance_arn
}

output "ec2_second_instance_arn" {
  description = "ARN of the second ec2 instance"
  value       = module.ec2_second_instance.ec2_instance_arn
}

output "s3_bucket_arn" {
  description = "ARN of the s3 bucket"
  value       = module.s3_bucket.s3_bucket_arn
}

output "s3_bucket_id" {
  description = "Id of the s3 bucket"
  value       = module.s3_bucket.s3_bucket_id
}