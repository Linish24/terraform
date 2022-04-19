resource "aws_instance" "a" {
  require_new = "new"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

output "ids" {
  value = [aws_instance.a.id]
}
