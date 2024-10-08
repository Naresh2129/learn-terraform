resource "aws_instance" "frontend" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0fdf2986db67b21ca"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id =  "Z102619628YDRUMI9QGXO"
  name    = "frontend-dev.nkdevops29.online"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.frontend.private_ip"]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0fdf2986db67b21ca"]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id =  "Z102619628YDRUMI9QGXO"
  name    = "mongodb-dev.nkdevops29.online"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.mongodb.private_ip"]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0fdf2986db67b21ca"]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id =  "Z102619628YDRUMI9QGXO"
  name    = "catalogue-dev.nkdevops29.online"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.catalogue.private_ip"]
}

resource "aws_instance" "cart" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0fdf2986db67b21ca"]

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id =  "Z102619628YDRUMI9QGXO"
  name    = "cart-dev.nkdevops29.online"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.cart.private_ip"]
}

resource "aws_instance" "mysql" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0fdf2986db67b21ca"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id =  "Z102619628YDRUMI9QGXO"
  name    = "mysql-dev.nkdevops29.online"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.mysql.private_ip"]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0fdf2986db67b21ca"]

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id =  "Z102619628YDRUMI9QGXO"
  name    = "rabbitmq-dev.nkdevops29.online"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.rabbitmq.private_ip"]
}

resource "aws_instance" "redis" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0fdf2986db67b21ca"]

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id =  "Z102619628YDRUMI9QGXO"
  name    = "redis-dev.nkkdevops29.online"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.redis.private_ip"]
}

resource "aws_instance" "shipping" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0fdf2986db67b21ca"]

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id =  "Z102619628YDRUMI9QGXO"
  name    = "shipping-dev.nkdevops29.online"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.shipping.private_ip"]
}

resource "aws_instance" "user" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0fdf2986db67b21ca"]

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id =  "Z102619628YDRUMI9QGXO"
  name    = "user-dev.nkdevops29.online"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.user.private_ip"]
}

resource "aws_instance" "payment" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0fdf2986db67b21ca"]

  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id =  "Z102619628YDRUMI9QGXO"
  name    = "payment-dev.nkdevops29.online"
  type    = "A"
  ttl     = 30
  records = ["aws_instance.payment.private_ip"]
}