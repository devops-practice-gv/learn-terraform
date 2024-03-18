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
    roll = 18
    height = 176
  }
}

# print the variable
output "y" {
  value = var.y
}

# print the list variable . It uses index [0] , [1] , [2]
output "y_list_Output" {
  value = var.y_list
}

output "y_list_Output_with_index" {
  value = var.y_list[0]
}

# print the map variable. It has its own index [name] , [roll] ,[height]
output "This_is_the_output_of_the_z_map" {
  value = var.z
}

output "This_is_the_output_of_the_z_map_with_Index" {
  value = var.z["name"]
}

#We can declare empty variable but data can be sent froma file, those files ar tfvars

# Declare a variable WITHOUT a value
variable "env" {}

output "catching_the_output_variable_from_TFVARS_file" {
  value = var.env
}