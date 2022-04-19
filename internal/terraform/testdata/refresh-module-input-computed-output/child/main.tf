variable "input" {
  type = string
}

resource "aws_instance" "foo" {
  foo = var.input
  tags = {
    AWS-terra = "AWS-terra"
  }
}

output "foo" {
  value = aws_instance.foo.foo
}
