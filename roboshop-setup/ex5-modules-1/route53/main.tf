resource "aws_route53_record" "dns-record" {
  zone_id = "Z10202231Q9C3TKFTZOQE"
  name    = "${var.component}-dev.devops71.tech"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {}
variable "component" {}
