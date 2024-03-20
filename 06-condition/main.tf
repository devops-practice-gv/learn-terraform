# Conditions in terraform is all about  choosing the value
#cond? true-val  : fal-var
resource "aws_instance" "Test1" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = var.instance_type == regex("^t2.*") ? "t3.micro" : var.instance_type
}

# if the user give a option then use

variable "instance_type" {}