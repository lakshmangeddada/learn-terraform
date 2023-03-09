module "sg" {
  source = "./sg"
}


module "ec2" {
  for_each = var.instances
  source = "./ec2"
  component = each.value["name"]
  instance_type = module.sg.allow_tls
}