variable "ami" {
  default = "ami-0b4f379183e5706b9"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "vpc_security_group_ids" {
  default = ["sg-08d5bcbdaaa75c92f"]
}
variable "zone_id" {
  default = "Z06349953MFB0F6ATK80E"
}
variable "components" {
  default = {
    frontend  = { name = "frontend-dev" }
    catalogue = { name = "catalogue-dev" }
    mongodb   = { name = "mongodb-dev" }
    user      = { name = "user-dev" }
    redis     = { name = "redis-dev" }
    cart      = { name = "cart-dev" }
    mysql     = { name = "mysql-dev" }
    shipping  = { name = "shipping-dev" }
    payment   = { name = "payment-dev" }
    rabbitmq  = { name = "rabbitmq-dev" }
  }
}


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
  name    = "${lookup(each.value, "name", null)}-dev.nareshboligorla.shop"
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instance, each.key, null), "private_ip", null)]
}



