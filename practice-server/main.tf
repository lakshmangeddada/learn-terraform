data "aws_ami" "ami" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}


resource "aws_instance" "instances" {
  count = length(var.instances)
  ami = data.aws_ami.ami.image_id
  instance_type = "count.index[type]"
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
  tags = {
    name = "count.index[name]"
  }
}

