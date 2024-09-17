variable "fruits" {
  default = [ "apple","banana","oranges","lemon" ]
}
output "fruit_name" {
  value = var.fruits
}
variable "fruits_with_price" {
  default = {
    apple = 100
    banana = 55
    oranges = 42
    lemons = 28

  }
}

output "apple_price" {
  value = var.fruits_with_price [["apple"], ["banana"], ["oranges"], ["lemons"] ]
}