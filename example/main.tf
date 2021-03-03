module "web_server" {
  source        = "./http_server"
  instance_type = "t2.micro"
}

module "example_sg" {
  source      = "./security_group"
  name        = "module-sg"
  vpc_id      = aws_vpc.example.id
  port        = 80
  cidr_blocks = ["0.0.0.0/0"]
}

output "public_dns" {
  value = module.web_server.public_dns
}