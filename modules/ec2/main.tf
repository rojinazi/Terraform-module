data "aws_ami" "amazonlx" {
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["amazon"] # Canonical
}

resource "aws_instance" "example" {

  ami                    = data.aws_ami.amazonlx.id
  instance_type          = var.instance_type
  key_name               = var.Keyname
  vpc_security_group_ids = [var.SG1]

  user_data = <<-EOF
        #! /bin/bash
        yum install httpd -y
        systemctl start httpd
        systemctl enable httpd
        echo “welcome to Devops class” > /var/www/html/index.html
        EOF
}







