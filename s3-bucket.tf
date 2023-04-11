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
