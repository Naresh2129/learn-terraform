resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = lookup(each.value, "name", null)
  }
}

resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id =  var.zone_id
  name    = "var.instance-dev.nareshboligorla.shop"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance, "private_ip"]
}
variable "components" {}
variable "zone_id" {}
variable "instance_type" {}
variable "vpc_security_group_ids" {}
variable "ami" {}