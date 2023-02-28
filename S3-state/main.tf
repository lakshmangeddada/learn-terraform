terraform {
  backend "s3" {
    name = "s3-devops71"
    key    = "S3-state/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "security_group" {
  default   = [ "sg-0615d2d6b16a84caa" ]
}


resource "aws_instance" "ec2" {
  ami           = "ami-0a017d8ceb274537d"
  instance_type = "t2.micro"
  vpc_security_group_ids = "${var.security_group}"
  tags = {
    Name = "test"
  }
}


output "security_group_id" {
  value = "${var.security_group}"
}