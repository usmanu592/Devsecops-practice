
resource "aws_instance" "main" {
    count = "${var.ec2_count}"
    ami = "${var.ami_id}"
    instance_type = "${var.instance_type}"
    subnet_id = "${var.subnet_id}"
    tags = {
         "name" = "${var.instance_tag}"
  }
}



