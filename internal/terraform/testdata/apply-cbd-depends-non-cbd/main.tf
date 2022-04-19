resource "aws_instance" "foo" {
  require_new = "yes"
  monitoring = true
  ebs_optimized = true
}

resource "aws_instance" "bar" {
  require_new = "yes"
  value       = "${aws_instance.foo.id}"

  lifecycle {
    create_before_destroy = true
  }
  ebs_optimized = true
  monitoring = true
}
