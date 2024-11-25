data "aws_ami" "amazon-linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ami-081205ca71b3f3635"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "dev_machine" {
  ami = ami-081205ca71b3f3635
  instance_type = "t3.micro"
  key_name = "keypair123"

  tags = {
    Environment = "dev"
    Name = "${var.name}-server"
  }
}