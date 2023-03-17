variable "instances" {
  default = {
    cart = {
      name = "cart"
      type = "t3.micro"
    }
    frontend = {
      name = "frontend"
      type = "t3.micro"
    }
  }
}
