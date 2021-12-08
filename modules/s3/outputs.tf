output "s3_bucket_arn" {
  description = "ARN of the s3 bucket"
  value       = aws_s3_bucket.s3_bucket.arn
}

output "s3_bucket_id" {
  description = "Id of the s3 bucket"
  value       = aws_s3_bucket.s3_bucket.id
}