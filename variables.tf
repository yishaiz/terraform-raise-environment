# vpc

 
variable "vpc_name" {
  default = "terraform-vpc"
}

#region
variable "region" {
  default = "us-east-1"
}

variable "availabilityZone" {
        default = "us-east-1a"
}

variable "instanceTenancy" {
 default = "default"
}

variable "dnsSupport" {
 default = true
}
variable "dnsHostNames" {
        default = true
}

# variable "vpcCIDRblock" {
#  default = "10.0.0.0/16"
# }
# variable "subnetCIDRblock" {
#         default = "10.0.1.0/24"
# }

variable "vpcCIDRblock" {
 default = "10.0.0.0/16"
}
variable "subnetCIDRblock" {
        default = "10.0.1.0/24"
}



variable "destinationCIDRblock" {
        default = "0.0.0.0/0"
}

variable "ingressCIDRblock" {
        type = "list"
        default = ["0.0.0.0/0"]
}

variable "egressCIDRblock" {
        type = "list"
        default = ["0.0.0.0/0"]
}

variable "mapPublicIP" {
        default = true
}



# cidr

variable "vpc_network_address" {
  default = "10.0.0.0/16"
}


# subnets
variable "subnet_pub_1_address" {
 default ="10.0.1.0/24"
}

variable "subnet_pub_2_address" {
 default ="10.0.2.0/24"
}

variable "subnet_prv_1_address" {
 default ="10.0.3.0/24"
}

variable "subnet_prv_2_address" {
 default ="10.0.4.0/24"
}


# private key path
 
variable "private_key_path" {
  default = "~/.ssh/terraform-keypair.pem"
}


# private_key = "${file(var.)}"aws-opsschool-april-kp.pem
 
# ingressCIDRblock - for security group
