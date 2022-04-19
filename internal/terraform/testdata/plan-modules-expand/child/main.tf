variable "foo" {}
variable "bar" {}

resource "aws_instance" "foo" {
  count = 2
  num   = var.foo
  bar   = "baz" #var.bar
  tags = {
    AWS-terra = "AWS-terra"
  }
}

output "out" {
  value = aws_instance.foo[0].id
}
