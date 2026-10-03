<<<<<<< HEAD
resource "aws_s3_bucket" "devops553" {
=======
resource "aws_s3_bucket" "enigma-ft1223" {
>>>>>>> 0f0efe2 (Update)
  bucket        = var.bucket_name
  force_destroy = true
  tags = {
    Name        = var.bucket_name
    Environment = "dev"
    ManagedBy   = "Terraform"
    Project     = "Session18"
  }
}
