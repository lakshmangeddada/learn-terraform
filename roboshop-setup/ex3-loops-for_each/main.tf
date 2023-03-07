data "aws_ami" "ami" {
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
  most_recent = true
}

resource "aws_instance" "instances" {
  for_each = var.instances
  ami = data.aws_ami.ami.image_id
  instance_type = each.value["type"]
  vpc_security_group_ids = ["sg-0615d2d6b16a84caa"]
  tags = {
    Name = each.value["name"]
  }
}

variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t3.micro"
    }
    payment = {
      name = "payment"
      type = "t3.small"
    }
    redis = {
      name = "redis"
      type = "t3.medium"
    }
  }
}
