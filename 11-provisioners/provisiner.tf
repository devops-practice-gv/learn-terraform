resource "aws_instance" "test_inst" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t3.small"
  vpc_security_group_ids = [data.aws_security_group.expense_app_security_group.id]

#  provisioner "remote-exec" {
#    inline = [
#      "sudo dnf install nginx -y",
#      "sudo systemctl start nginx",
#    ]
#  }
#  connection {
#    type = "ssh"
#    user = "ec2user"
#    password = "DevOps321"
#    host = self.public_ip
#  }
}


data "aws_security_group" "expense_app_security_group" {
  name = "allow-all"
}

# Establishes connection to be used by all if you keep the connection
#outside of provisioner.
# generic remote provisioners (i.e. file/remote-exec)

resource "null_resource" "test2" {
  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.test_inst.public_ip
    }

    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
}