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

resource "aws_route53_record" "dns-record" {
  zone_id = "Z10202231Q9C3TKFTZOQE"
  name    = "var.component-dev.devops71.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}

variable "component" {}