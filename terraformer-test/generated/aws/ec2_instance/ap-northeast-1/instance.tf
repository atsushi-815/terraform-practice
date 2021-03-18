resource "aws_instance" "tfer--i-002D-0c66432a3385efebd_" {
  ami                         = "ami-0f27d081df46f326c"
  associate_public_ip_address = "true"
  availability_zone           = "ap-northeast-1c"
  cpu_core_count              = "1"
  cpu_threads_per_core        = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data  = "false"
  hibernation        = "false"
  instance_type      = "t2.micro"
  ipv6_address_count = "0"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
  }

  monitoring = "false"
  private_ip = "172.31.7.69"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "100"
    throughput            = "0"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  security_groups        = ["launch-wizard-6"]
  source_dest_check      = "true"
  subnet_id              = "subnet-12015349"
  tenancy                = "default"
  vpc_security_group_ids = ["sg-07538b713151c4d2c"]
}
