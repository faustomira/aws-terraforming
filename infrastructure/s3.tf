resource "aws_s3_bucket" "fsm-datasources" {
    bucket = "fsmdatasources"
    #acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "fsm-datasources" {
  bucket = aws_s3_bucket.fsm-datasources.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
