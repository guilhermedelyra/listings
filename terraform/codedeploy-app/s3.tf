resource "aws_s3_bucket" "deploy-bucket" {
  bucket = "guilherme-classifieds-full-app-${var.app-name}-deployment"
}
