resource "aws_instance" "create" {
	bar = "abc"
  monitoring = true
  ebs_optimized = true
}

resource "aws_instance" "other" {
	var = "${aws_instance.create.id}"
    foo = "${aws_instance.create.bar}"
  ebs_optimized = true
  monitoring = true
}
