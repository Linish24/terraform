resource "aws_instance" "bar" {
    foo = "baz"

    lifecycle {
        create_before_destroy = true
    }
  ebs_optimized = true
  monitoring = true
}
