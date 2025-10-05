resource "aws_s3_bucket" "backend-s3-bucket" {
  bucket        = var.project_name
  tags = var.tags
}