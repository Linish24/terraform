resource "aws_instance" "bar" {
    require_new = "xyz"
    lifecycle {
        create_before_destroy = true
    }
  ebs_optimized = true
  monitoring = true
}
