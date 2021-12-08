data "aws_ami" "ec2_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "ec2_instance" {
  ami           = data.aws_ami.ec2_ami.id
  instance_type = var.ec2_instance_type

  tags = {
    Name = var.application_name
  }
}