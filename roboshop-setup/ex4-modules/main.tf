module "demo" {
  for_each = var.instances
  source = "./ec2"
  component = each.value["name"]
  instance_type = each.value["type"]
}

variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t3.micro"
    }
    payment = {
      name = "payment"
      type = "t3.small"
    }
    redis = {
      name = "redis"
      type = "t3.medium"
    }
  }
}