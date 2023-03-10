resource "aws_instance" "web" {
  # ...

  # Establishes connection to be used by all
  # generic remote provisioners (i.e. file/remote-exec)
  connection {
    type     = "ssh"
    user     = "centos"
    password = DevOps321
    host     = self
  }

  provisioner "remote-exec" {
    inline = [
      "echo Hello world"
    ]
  }
}
