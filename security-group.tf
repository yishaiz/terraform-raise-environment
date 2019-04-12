# security-group

resource "aws_security_group" "terraform_vpc_security_group" {
  vpc_id     = "${aws_vpc.main_vpc.id}"
  name = "my vpc security group"
  description = "my vpc security group"

  ingress{
    cidr_blocks = "${var.ingressCIDRblock}"
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
  
  ingress{
    cidr_blocks = "${var.ingressCIDRblock}"
    from_port = 80
    to_port = 80
    protocol = "tcp"
  }


# outbound internet access


 egress {
    protocol   = "tcp"
    cidr_blocks = "${var.egressCIDRblock}" 
    from_port  = 0
    to_port    = 65535
  }

#  egress {
#     from_port = 22
#     to_port = 22
#     protocol = "tcp"
#     cidr_blocks = "${var.egressCIDRblock}"
#  }

#  egress {
#     from_port = 80
#     to_port = 80
#     protocol = "tcp"
#     cidr_blocks = "${var.egressCIDRblock}"
#  }

#  egress {
#    from_port   = 0
#    to_port     = 0
#    protocol    = "tcp"
#    cidr_blocks = "${var.egressCIDRblock}"
#  }


  tags = {
    Name =  "my vpc security group"
  }
}


# create VPC Network access control list

resource "aws_network_acl" "Terraform_VPC_Security_ACL" {
  vpc_id = "${aws_vpc.main_vpc.id}"
  subnet_ids = [ "${aws_subnet.subnet-pub-1.id}" ]

# allow port 22
  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    # cidrBlock = "${var.destinationCIDRblock}" 
    from_port  = 22
    to_port    = 22
  }

    egress {
    protocol   = "tcp"
    rule_no    = 200
    action     = "allow"
    # cidrBlock = "${var.destinationCIDRblock}" 
    from_port  = 1
    to_port    = 65535
  }
}