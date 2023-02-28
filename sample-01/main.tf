variable "security_group" {
  vpc_security_group_ids   = [ "sg-0615d2d6b16a84caa" ]
}


resource "aws_instance" "ec2" {
  ami           = "ami-0a017d8ceb274537d"
  instance_type = "t2.micro"
  vpc_security_group_ids = "${var.security_group}"
  tags = {
    Name = "test"
  }
}

output "private_ip" {
  value = "${var.security_group}"
}