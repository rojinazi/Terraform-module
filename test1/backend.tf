terraform {
  backend "s3" {
    bucket = "rojina-terraform-state"
    key    = "rojina1-state/"
    region = "us-east-1"
    dynamodb_table = "terraformfile"
  }
}