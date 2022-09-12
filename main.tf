resource "aws_elb" "abc" {
  name               = var.name
  availability_zones = var.availability_zones

  access_logs {
    bucket = var.bucket
  }
  listener {
    instance_port     = var.instance_port
    instance_protocol = var.instance_protocol
    lb_port           = var.lb_port
    lb_protocol       = var.lb_protocol
  }
}
