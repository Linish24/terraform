resource "aws_instance" "a" {
  id = "a"
  tags = {
    AWS-terra = "AWS-terra"
  }
}

output "a_output" {
  value = "${aws_instance.a.id}"
}
