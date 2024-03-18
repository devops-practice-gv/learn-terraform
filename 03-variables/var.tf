# Declare a variable with value

variable "x" {
  default = 100
}

# Declare a variable WITHOUT a value
variable "y" {}

# Declare a list variable
variable "y_list" {
  default = [ 1,2,3]
}

# Declare a map variable
variable "z" {
  default = {
    name = "gv"
    age = 40
    height = 176
  }
}

# print the variable
output "y" {
  value = var.y
}

# print the variable
output "y_list" {
  value = var.y_list
}

# print the variable
output "z" {
  value = var.z
}