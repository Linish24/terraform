resource "aws_instance" "web" {
}

resource "aws_instance" "web" {
  ebs_optimized = true
  monitoring = true
}
