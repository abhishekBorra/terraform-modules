resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.s3_bucket_name
  acl    = "private"

  lifecycle_rule {
    enabled = true
    id      = "7d-retention"
    expiration {
      days = 7
    }
  }

  tags = {
    Name = var.application_name
  }
}