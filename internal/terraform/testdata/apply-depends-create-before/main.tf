resource "aws_instance" "web" {
  require_new = "ami-new"
  lifecycle {
    create_before_destroy = true
  }
  ebs_optimized = true
  monitoring = true
}

resource "aws_instance" "lb" {
  instance = aws_instance.web.id
  monitoring = true
  ebs_optimized = true
}
