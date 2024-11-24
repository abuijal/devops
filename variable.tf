variable "instance_type" {
  description = "This describes the instance type"
  type = string
  default = "t3.micro"
}

variable "ami_id" {
    description = "This describes the ami image"
    type = string
    default = "ami-081205ca71b3f3635"
}
variable "server_port" {
  description = "Server use this port for http requests"
  type = number
  default = 80
}

variable "ssh_port" {
  description = "Describes the ssh port"
  type = number
  default = 22
}

variable "availability_zone" {
  default = "ap-southeast-3"
}