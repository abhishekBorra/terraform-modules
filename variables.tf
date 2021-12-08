variable "aws_access_key" {
  description = "AWS access key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
}

variable "application_name" {
  description = "Name of the application"
  type        = string
  default     = "AWS terraform modules"
}

variable "application_instance_code" {
  description = "Code of the application instance"
  type        = string
}

variable "configuration_values" {
    type = map(object({
        aws_region          = string
        ec2_instance_type   = string
        s3_bucket_name      = string
    }))

    default = {
        XTWS = {
            aws_region          = "ap-southeast-1"
            ec2_instance_type   = "t2.micro"
            s3_bucket_name      = "s3-xtws-personal-bucket"
        }
        YJES = {
            aws_region          = "ap-southeast-1"
            ec2_instance_type   = "t2.micro"
            s3_bucket_name      = "s3-yjes-personal-bucket"
        }
    }
}