terraform {
  backend "s3" {
    bucket = "workspaceproject2025"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}