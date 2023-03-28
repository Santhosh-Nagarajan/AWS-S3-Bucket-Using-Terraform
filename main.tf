resource "aws_s3_bucket" "my-bucket" {
  bucket = var.bucket-name
  acl    = var.acl

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}