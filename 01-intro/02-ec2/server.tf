resource "aws_instance"  "helloworld"{
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.small"

  tags = {
    name = helloworld
  }
}