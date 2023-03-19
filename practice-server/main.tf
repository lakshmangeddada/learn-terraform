data "aws_ami" "ami" {
  most_recent = true
  name_regex = "devops-ansible"
  owners = ["973714476881"]
}


resource "aws_instance" "instances" {
  for_each = var.instances
  ami = data.aws_ami.ami.image_id
  instance_type = each.value["type"]
  vpc_security_group_ids = [ "sg-0615d2d6b16a84caa" ]
  tags = {
    Name = each.value["name"]
  }
}


