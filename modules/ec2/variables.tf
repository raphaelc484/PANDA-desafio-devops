variable "ec2_type" {
  type = map(string)
  default = {
    dev        = "t2.micro"
    production = "t2.micro"
    staging    = "t3.micro"
  }
  description = "tamanho das EC2 por ambientes (dev, staging, production)"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID"
}

