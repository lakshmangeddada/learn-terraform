variable "sample" {
  default = "Hello world"
}

output "sample" {
  value = var.sample
}

variable "sample1" {}

output "sample1" {
  value = var.sample1
}

variable "sample2" {
  default = [
    "welcome to session",
    100
  ]
}

variable "sample3" {
  default = {
    string = lakshman
    boolean = true

  }
}

output "sample2" {
  value = "first variable in the list - ${var.sample2[0]}"
}

output "sample3" {
  value = "second variable is  - ${var.sample3 ["boolean"]}"
}