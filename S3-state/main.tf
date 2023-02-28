resource "aws_s3_bucket" "s3" {
  bucket = "devops71-geddada"

  tags = {
    Name        = "geddada"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.s3.id
  acl = "private"
  }