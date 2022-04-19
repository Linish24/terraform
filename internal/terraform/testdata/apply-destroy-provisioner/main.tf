resource "aws_instance" "foo" {
    provisioner "shell" {}
  monitoring = true
  ebs_optimized = true
}
