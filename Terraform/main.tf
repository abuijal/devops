data "aws_ami" "amazon-linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20240927"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "dev_machine" {
  ami = "amazon/ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20240927"
  instance_type = "t3.micro"
  key_name = "keypair123"

  tags = {
    Environment = "dev"
    Name = "${var.name}-server"
  }
}