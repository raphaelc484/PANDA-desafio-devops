resource "aws_instance" "app" {
  ami           = data.aws_ami.ubuntu.id
  subnet_id     = var.subnet_id
  instance_type = var.ec2_type[terraform.workspace]

  tags = {
    Iac = true
  }
}