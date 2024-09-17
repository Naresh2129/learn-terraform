variable "fruits" {
  default = [ "apple","banana","oranges","lemon" ]
}
output "fruit_name" {
  value = var.fruits
}
variable "fruit_details" {
  default = {
    apple = {
      stock = 100
      price = 25
      sale  = true

    }
    banana ={
      stock = 200
      price = 24
      sale  = true
    }
    oranges = {
      stock = 300
      price = 24
      sale  = false
    }
    lemons = {
      stock = 20
      price = 20
      sale  = true
    }

  }
}

output "apple_price" {
  value = "apple price" = $(var.fruit_details["apple"].stock)