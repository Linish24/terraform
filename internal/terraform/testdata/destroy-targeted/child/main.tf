variable "in" {
}

resource "aws_instance" "b" {
  foo = var.in
  tags = {
    AWS-terra = "AWS-terra"
  }
}

output "out" {
  value = var.in
}
