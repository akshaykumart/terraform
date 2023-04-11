resource "aws_s3_bucket" "bucket" {
  bucket = "my-tf-test-bucket-0117"

  tags = {
    Name = "My bucket"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

locals {
  s3_origin_id = "myS3Origin"
}
resource "aws_s3_bucket_public_access_block" "example1" {
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
