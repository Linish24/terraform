resource "aws_instance" "a" {
  require_new = "new"
  lifecycle {
    create_before_destroy = true
  }
  monitoring = true
  ebs_optimized = true
}

output "ids" {
  value = [aws_instance.a.id]
}
