# VARIABLES
/*variable "bucket_name" {}
variable "name" {}
variable "environment" {}

output "remote_state_s3_bucket_name" {
  value = aws_s3_bucket.remote_state_bucket.id
}

resource "aws_s3_bucket" "remote_state_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.name
    Environment = var.environment
  }
}*/


#aws s3api create-bucket --bucket remote-projet-rncp --region eu-west-3 --create-bucket-configuration LocationConstraint=eu-west-3      