resource "aws_instance" "test" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = var.instance_type == "" ? "t2.micro" : var.instance_type
}

variable "instance_type" {}

variable "create_server" {}

resource "aws_instance" "demo" {
  count = var.create_server == "true" ? 1 : 0
  ami = "ami-0a017d8ceb274537d"
  type = var.instance_type == "" ? "t2.micro" : var.instance_type
}



resource "aws_instance" "demo" {
  count = tobool(var.create_server) ? 1 : 0
  ami = "ami-0a017d8ceb274537d"
  type = var.instance_type == "" ? "t2.micro" : var.instance_type
}