
resource "aws_vpc" "main" {
  cidr_block       = "${var.vpc_cidr}"  #"10.0.0.0/16"
  instance_tenancy = "${var.tenancy}"  #"default"

  tags = {
    Name = "${var.vpc_tag}"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.subnet_cidr}"

  tags = {
    Name = "${var.subnet_tag}"
  }
}

output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "subnet_id" {
value = "${aws_subnet.main.id}" 
}

