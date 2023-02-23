resource "aws_instance" "app_server" {
  ami           = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"

  tags = {
    Name = "test"
  }
}