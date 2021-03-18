terraform {
  backend "s3" {
    bucket = "tfstate-pragmatic-terraform-uhoho"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}