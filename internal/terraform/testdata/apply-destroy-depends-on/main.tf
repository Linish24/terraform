resource "aws_instance" "foo" {
    depends_on = ["aws_instance.bar"]
  ebs_optimized = true
  monitoring = true
}

  ebs_optimized = true
resource "aws_instance" "bar" {}
