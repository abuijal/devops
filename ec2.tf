#EC2creation

variable "ami" {
  type    = string
  default = "ami-081205ca71b3f3635"
}

variable "infra_env" {
  default = "ec2-machine"
}

variable "instace_type" {
  type    = string
  default = "t3.micro"
}

variable "keyname" {
  type    = string
  default = "keypair1"
}

variable "azs" {
  type    = string
  default = ap-southeast-3
}

variable "vpc_id" {
  type    = string
  default = "vpc-0106501aa5326af88"
}


variable "instance_name" {
  default = "monitoring"}