resource "aws_instance" "a" {
  require_new = "new"
  monitoring = true
  ebs_optimized = true
}

output "ids" {
  value = [aws_instance.a.id]
}
