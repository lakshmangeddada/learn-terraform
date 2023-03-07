variable "d1" {
  default = 5
}

resource "null_resource" "nothing" {
  count = var.d1
}

variable "d2" {
  default = [ "apple", "banana" ]
}

resource "null_resource" "something" {
  count = length(var.d2)
}

variable "d3" {
  default = {
    apple = {
      name = "apple"
      count = 3
    }
    banana = {
      name = "banana"
      count = 2
    }
  }
}

resource "null_resource" "anything" {
  for_each = var.d3
}
