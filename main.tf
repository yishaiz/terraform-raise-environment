provider "aws" {
  region="${var.region}"
}

# get availability zones
data "aws_availability_zones" "available" {} 


# output "aws_availability_zones" {
#   value = "${data.aws_availability_zones.available}"
# }

resource "aws_key_pair" "bastion_key" {
  key_name   = "terraform-ssh-to-machines" # "your_key_name"
  
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDXSsS8GkQUhdhRURGNJ/i4/lFHzhxGVO8I8YipDKwRkgdyWWVHRPNkJFCInbx5eq0K9ubbhga1MCHS+jjUJ6DdsF2dZxljqeELpS9RfyMKB8Ues+prtxfydbcH9wQG21ECTKj6mYU+hBFLjS6S+hxCMLQI42EGPNbXTXK9454Jld8u3EX//9JKqTaQQWCwg63VBW2YHWl5MPK52vKOwzx2FuVj90E3jfhrg7IUuv62kILUVnTiv68GbtTVULcp5gPHfoN5H9I/AOyVYGyTZfHpL5wN7qoOiLJNLiWgOYvsf/i/mx3c81ZeiTY0melAbr2esoQLSvmi7GfQlZKd6xPHmDwBgGU0YXPGLUoZH0vJMP7094n1dwuU8Go6anajaageRAf6RTkc6Cl1PAXIHjOPG6WYPhlcVed+yjeBMrknezPVH8+WAmWNhwm/yEOrb+/Iz8xFFrM9lxhBORfIeySbqx/AteYXr8LgF3M2aDkFOj1IOTD+6qucQlRM9PheZcHPk2LdxceCp4nN6NA5y2O/OE7D2eJYWjNTrgkT2VP5JJnT452aFub0YsjTNbjU6SPXKJV3oj7w4y0wfUEHQpjZ93ehZRi1fUm+dNVLJjGgUwPtBSRb8JZ6q8dBvaE5con+eiYnTAr6avh9Un6I4CDwmoMlU3owY+66CHHw/wSkNQ== yishai@z5"
}


output "aws_availability_zones_names" {
  value = "${data.aws_availability_zones.available.names}"
}



# cidr_block       = "10.0.0.0/16"

# instance_tenancy = "default"
# change tenancy to default


 

# output
output "my_value_to_debug" {
  value = "${aws_subnet.subnet-prv-2.id}"
}

output "my_value_to_debug2" {
  value = "${aws_subnet.subnet-prv-2.arn}"
}


# data 

# in a separate file

