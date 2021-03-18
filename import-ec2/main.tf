provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "imported" {
  ami = "ami-0f27d081df46f326c"
  instance_type = "t2.micro"
}