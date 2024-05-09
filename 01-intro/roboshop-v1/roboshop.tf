resource "aws_instance" "frontend" {
  ami           = ami-0f3c7d07486cad139
  instance_type = "t2.micro"
  vpc_security_group_ids = [sg-0fdf2986db67b21ca]

  tags = {
    Name = "frontend"
  }
  resource "aws_route53_record" "www" {
    zone_id = aws_route53_zone.primary.zone_id
    name    = "www.example.com"
    type    = "A"
    ttl     = 300
    records = [aws_eip.lb.public_ip]
  }
  resource "aws_instance" "catalogue" {
    ami           = ami-0f3c7d07486cad139
    instance_type = "t2.micro"
    vpc_security_group_ids = [sg-0fdf2986db67b21ca]


    tags = {
      Name = "catalogue"
    }

    resource "aws_instance" "cart" {
      ami           = ami-0f3c7d07486cad139
      instance_type = "t2.micro"
      vpc_security_group_ids = [sg-0fdf2986db67b21ca]

      tags = {
        Name = "cart"
      }

      resource "aws_instance" "mongodb" {
        ami           = ami-0f3c7d07486cad139
        instance_type = "t2.micro"
        vpc_security_group_ids = [sg-0fdf2986db67b21ca]

        tags = {
          Name = "mongodb"
        }

        resource "aws_instance" "mysql" {
          ami           = ami-0f3c7d07486cad139
          instance_type = "t2.micro"
          vpc_security_group_ids = [sg-0fdf2986db67b21ca]

          tags = {
            Name = "mysql"
          }

          resource "aws_instance" "rabbitmq" {
            ami           = ami-0f3c7d07486cad139
            instance_type = "t2.micro"
            vpc_security_group_ids = [sg-0fdf2986db67b21ca]

            tags = {
              Name = "rabbitmq"
            }

            resource "aws_instance" "payment" {
              ami           = ami-0f3c7d07486cad139
              instance_type = "t2.micro"
              vpc_security_group_ids = [sg-0fdf2986db67b21ca]

              tags = {
                Name = "payment"
              }

              resource "aws_instance" "user" {
                ami           = ami-0f3c7d07486cad139
                instance_type = "t2.micro"
                vpc_security_group_ids = [sg-0fdf2986db67b21ca]

                tags = {
                  Name = "user"
                }

                resource "aws_instance" "shipping" {
                  ami           = ami-0f3c7d07486cad139
                  instance_type = "t2.micro"
                  vpc_security_group_ids = [sg-0fdf2986db67b21ca]

                  tags = {
                    Name = "shipping"
                  }

                  resource "aws_instance" "redis" {
                    ami           = ami-0f3c7d07486cad139
                    instance_type = "t2.micro"
                    vpc_security_group_ids = [sg-0fdf2986db67b21ca]

                    tags = {
                      Name = "redis"
                    }
