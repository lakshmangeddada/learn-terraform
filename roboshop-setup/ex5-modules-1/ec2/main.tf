data "aws_ami" "ami" {
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
  most_recent = true
}

resource "aws_instance" "instance" {
  ami = data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = var.component
  }
}

variable "component" {}
variable "instance_type" {}
variable "sg_id" {}

output "private_ip" {
  value = aws_instance.instance.private_ip
}