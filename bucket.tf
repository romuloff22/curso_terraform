resource "aws_s3_bucket" "bucket" {
  bucket = "romuloff-remote-state"
}

resource "aws_s3_bucket_versioning" "bucket-version" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}