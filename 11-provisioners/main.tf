resource "aws_instance" "test_inst" {
  ami           = "ami-05f020f5935e52dc4"
  instance_type = "t3.small"
  vpc_security_group_ids = [data.aws_security_group.expense_app_security_group.id]

  provisioner "Test Provisioner" {
    connection {
      type = "ssh"
      user = "ec2user"
      password = "DevOps321"
      host = self.public_ip
    }
    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx -y",
    ]
  }
}


data "aws_security_group" "expense_app_security_group" {
  name = "allow-all"
}

# Establishes connection to be used by all if you keep the connection
#outside of provisioner.
# generic remote provisioners (i.e. file/remote-exec)