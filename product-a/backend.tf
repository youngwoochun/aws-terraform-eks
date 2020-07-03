terraform {
  backend "s3" {
    bucket               = "terraform-state-product-a"
    dynamodb_table       = "terraform-state-product-a-lock"
    key                  = "dev/us-east-1/eks"
    region               = "us-east-1"
  }
}
