variable "vpc_id" {}

resource "aws_instance" "child" {
  vpc_id = var.vpc_id
  monitoring = true
  ebs_optimized = true
}

output "modout" {
  value = aws_instance.child.id
}
