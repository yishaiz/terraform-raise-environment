


# ec2 machines
resource "aws_instance" "machine_pub1" {
  ami="ami-0ac019f4fcb7cb7e6"
  instance_type="t2.micro"
  subnet_id="${aws_subnet.subnet-pub-1.id}"
  key_name = "terraform-keypair"

  # availability_zone = "${var.availabilityZone}"



  tags{
    Name = "terraform_machine_pub1"
  }
  
  connection {
    
    # ec2-user
    user="ubuntu"
    type = "ssh"
    private_key = "${file(var.private_key_path)}"
  }

#   provisioner "remote-exec"{
#     inline = [
#         "sudo apt update -y",
# # "sudo apt install nginx -y",

#         # "sudo service  nginx"
#     ]
#   }

}



# temporary removed !

resource "aws_instance" "machine_pub2" {
  ami="ami-0ac019f4fcb7cb7e6"
  instance_type="t2.micro"
  subnet_id="${aws_subnet.subnet-pub-2.id}"

  key_name = "terraform-keypair"

  tags{
    Name = "terraform_machine_pub2"
  }
}

resource "aws_instance" "machine_prv1" {
  ami="ami-0ac019f4fcb7cb7e6"
  instance_type="t2.micro"
  subnet_id="${aws_subnet.subnet-prv-1.id}"

  iam_instance_profile="${aws_iam_instance_profile.ec2_role.name}"

  key_name = "terraform-keypair"

  tags{
    Name = "terraform_machine_prv1"
  }
}

resource "aws_instance" "machine_prv2" {
  ami="ami-0ac019f4fcb7cb7e6"
  instance_type="t2.micro"
  subnet_id="${aws_subnet.subnet-prv-2.id}"

  key_name = "terraform-keypair"

  tags{
    Name = "terraform_machine_prv2"
  }
}



# multiple machines
resource "aws_instance" "my_machines" {
  count=3
  ami="ami-0ac019f4fcb7cb7e6"
  instance_type="t2.micro"

  subnet_id="${aws_subnet.subnet-pub-1.id}"
}