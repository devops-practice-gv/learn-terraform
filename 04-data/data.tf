data "aws_security_group" "expense_app_security_group" {
  name = "allow-all"
}

output "ID_of_Sec_Grp" {
  value = "data.aws_security_group.expense_app_security_group"
}