data "aws_ami" "ami" {
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
  most_recent = true
}

resource "aws_instance" "instance" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0615d2d6b16a84caa"]
  tags = {
    Name = var.component
  }
}

variable "component" {}
variable "instance_type" {}