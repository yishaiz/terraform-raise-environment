  
# Create the Route Table

resource "aws_route_table" "public-route-table" {
   vpc_id = "${aws_vpc.main_vpc.id}"
   route {
      cidr_block = "0.0.0.0/0"
      gateway_id = "${aws_internet_gateway.igw.id}"
   }
}

# Create the Internet Access

resource "aws_route" "My_VPC_internet_access" {
  route_table_id        = "${aws_route_table.public-route-table.id}"
  destination_cidr_block = "${var.destinationCIDRblock}"
  gateway_id             = "${aws_internet_gateway.igw.id}"
}

# Associate the Route Table with the Subnet
resource "aws_route_table_association" "My_VPC_association" {
    subnet_id      = "${aws_subnet.subnet-pub-1.id}"
    route_table_id = "${aws_route_table.public-route-table.id}"
}