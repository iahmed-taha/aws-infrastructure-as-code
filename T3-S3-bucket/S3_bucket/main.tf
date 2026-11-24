resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name


  tags = {
    Name        = "My S3 Bucket"
    Environment = "Dev"
  }
  
}



resource "aws_s3_bucket_versioning" "my_bucket_versioning"{
    bucket = aws_s3_bucket.my_bucket.id
    versioning_configuration{
        status = "Enabled"
    }
}

resource "aws_s3_bucket_public_access_block" "my_bucket_public_access_block" {
    bucket = aws_s3_bucket.my_bucket.id
    block_public_acls       = true
    block_public_policy     = true
    ignore_public_acls      = true
    restrict_public_buckets   = true
}