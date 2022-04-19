resource "aws_instance" "a" {
  id = "a"
  monitoring = true
  ebs_optimized = true
}

output "a_output" {
  value = "${aws_instance.a.id}"
}
