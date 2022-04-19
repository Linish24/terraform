resource "aws_instance" "shared" {
  monitoring = true
  ebs_optimized = true
}

module "child" {
    source = "./child"
    value = "${aws_instance.shared.id}"
}
