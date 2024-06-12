resource "aws_s3_bucket" "bucketmodule" {
  bucket = var.nombrebucket
  tags = var.tagsbucket
}