resource "aws_lb" "lb" {
  name               = var.lb_name
  internal           = false
  load_balancer_type = "application"

  tags = {
    Iac = true
  }

  subnet_mapping {
    subnet_id = var.subnet_a_id
  }

  subnet_mapping {
    subnet_id = var.subnet_b_id
  }
}