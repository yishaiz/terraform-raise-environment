


# vpc
# resource "aws_vpc" "${var.vpc_name}" {
resource "aws_vpc" "main_vpc" {
  cidr_block = "${var.vpc_network_address}"

  tags = {
    Name = "${var.vpc_name}"
  }
}


