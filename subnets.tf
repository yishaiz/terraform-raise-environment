# subnets

resource "aws_subnet" "subnet-pub-1" {
  vpc_id     = "${aws_vpc.main_vpc.id}"
  cidr_block = "${var.subnet_pub_1_address}"
  map_public_ip_on_launch = "true"
  depends_on = ["aws_internet_gateway.igw"]

  # availability_zone = "${data.aws_availability_zones.available.names[0]}"
  availability_zone = "${var.availabilityZone}"

  

  tags = {
    Name = "subnet-pub-1"
  }
}

resource "aws_subnet" "subnet-pub-2" {
  vpc_id     = "${aws_vpc.main_vpc.id}"
  cidr_block = "${var.subnet_pub_2_address}"
  map_public_ip_on_launch = "true"
  availability_zone = "${data.aws_availability_zones.available.names[1]}"

  tags = {
    Name = "subnet-pub-2"
  }
}

resource "aws_subnet" "subnet-prv-1" {
  vpc_id     = "${aws_vpc.main_vpc.id}"
  cidr_block = "${var.subnet_prv_1_address}"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"

  tags = {
    Name = "subnet-prv-1"
  }
}
resource "aws_subnet" "subnet-prv-2" {
  vpc_id     = "${aws_vpc.main_vpc.id}"
  cidr_block = "${var.subnet_prv_2_address}"
  availability_zone = "${data.aws_availability_zones.available.names[1]}"

  tags = {
    Name = "subnet-prv-2"
  }
}
