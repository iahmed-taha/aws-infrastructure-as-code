resource "aws_s3_bucket" "task-bucket-21-55" {
  bucket = var.bucket_name

   tags = {
    Name        = "task-bucket-21-55"
  }
}

resource "aws_s3_bucket_public_access_block" "task-bucket-21-55" {
  bucket = aws_s3_bucket.task-bucket-21-55.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "task-bucket-21-55" {
  bucket = aws_s3_bucket.task-bucket-21-55.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "arn" "task-bucket-21-55" {
  arn = aws_s3_bucket.task-bucket-21-55.arn
}

resource "bucket_name" "task-bucket-21-55" {
  bucket = aws_s3_bucket.task-bucket-21-55.bucket
}

