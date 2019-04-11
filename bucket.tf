

locals {
  name="yishai",
  bucket_prefix="tf-tutorial-${local.name}"
}


resource "aws_s3_bucket" "my_bucket" {
  bucket="${local.bucket_prefix}-first-bucket"
}



