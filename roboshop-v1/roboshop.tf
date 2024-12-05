resource "aws_instance" "frontend" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08d5bcbdaaa75c92f"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id =  "Z06349953MFB0F6ATK80E"
  name    = "frontend-dev.nareshboligorla.shop"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.frontend.private_ip"]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08d5bcbdaaa75c92f"]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id =  "Z06349953MFB0F6ATK80E"
  name    = "mongodb-dev.nareshboligorla.shop"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.mongodb.private_ip"]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08d5bcbdaaa75c92f"]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id =  "Z06349953MFB0F6ATK80E"
  name    = "catalogue-dev.nareshboligorla.shop"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.catalogue.private_ip"]
}

resource "aws_instance" "cart" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08d5bcbdaaa75c92f"]

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id =  "Z06349953MFB0F6ATK80E"
  name    = "cart-dev.nareshboligorla.shop"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.cart.private_ip"]
}

resource "aws_instance" "mysql" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08d5bcbdaaa75c92f"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id =  "Z06349953MFB0F6ATK80E"
  name    = "mysql-dev.nareshboligorla.shop"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.mysql.private_ip"]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08d5bcbdaaa75c92f"]

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id =  "Z06349953MFB0F6ATK80E"
  name    = "rabbitmq-dev.nareshboligorla.shop"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.rabbitmq.private_ip"]
}

resource "aws_instance" "redis" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08d5bcbdaaa75c92f"]

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id =  "Z06349953MFB0F6ATK80E"
  name    = "redis-dev.nareshboligorla.shop"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.redis.private_ip"]
}

resource "aws_instance" "shipping" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08d5bcbdaaa75c92f"]

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id =  "Z06349953MFB0F6ATK80E"
  name    = "shipping-dev.nareshboligorla.shop"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.shipping.private_ip"]
}

resource "aws_instance" "user" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-08d5bcbdaaa75c92f"]

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id =  "Z06349953MFB0F6ATK80E"
  name    = "user-dev.nareshboligorla.shop"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.user.private_ip"]
}

resource "aws_instance" "payment" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08d5bcbdaaa75c92f"]

  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id =  "Z06349953MFB0F6ATK80E"
  name    = "payment-dev.nareshboligorla.shop"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.payment.private_ip"]
}