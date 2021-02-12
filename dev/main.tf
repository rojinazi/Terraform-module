
resource "aws_iam_user" "imuser" {
for_each = toset(var.imuser)
  name  = each.value
}

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
count = var.create_instance ? var.instance_count : 1
  ami                    = data.aws_ami.amazonlx.id
  instance_type          = "t2.micro"
  key_name               = "dec2020"
  vpc_security_group_ids = ["sg-0bd415784c1253324"]
}


