resource "aws_instance" "foo" {
    num = "2"

    provisioner "shell" {
        foo = "bar"
    }
  ebs_optimized = true
  monitoring = true
}
