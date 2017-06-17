variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_public_key" {}
variable "aws_private_key" {}

variable "prefix" {
  description = "A prefix to easily identify the resources in AWS"
  default = "aws"
}

variable "aws_region" {
    description = "EC2 Region for the VPC"
    default = "us-east-1"
}

variable "aws_az" {
    description = "EC2 availability zone for the VPC"
    default = "us-east-1c"
}

variable "amis" {
    description = "HPE Helion Stackato 3.6.2 Public AMI"
    default = {
        us-east-1      = "ami-cd6759a7"
        us-west-1      = "ami-ca98e8aa"
        eu-west-1      = "ami-3cfa444f"
        eu-central-1   = "ami-0637d269"
        ap-southeast-1 = "ami-ad9e56ce"
        ap-northeast-1 = "ami-aacbc6c4"
        ap-southeast-2 = "ami-3686a055"
        ap-northeast-2 = "ami-445f912a"
        sa-east-1      = "ami-2961e345"
    }
}

variable "vpc_cidr" {
    description = "CIDR for the whole VPC"
    default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    default = "10.0.0.0/24"
}

variable "private_subnet_cidr" {
    description = "CIDR for the Private Subnet"
    default = "10.0.1.0/24"
}

variable "bosh_internal_cidr" {
    description = "CIDR for BOSH Subnet (by default BOSH uses Private Subnet)"
    default = "${vars.private_subnet_cidr}"
}

variable "bosh_internal_gw" {
    description = "BOSH Subnet internal gateway (by default BOSH uses Private Subnet)"
    default = "10.0.1.1"
}

variable "bosh_internal_ip" {
    description = "CIDR for the Private Subnet (by default BOSH uses Private Subnet)"
    default = "10.0.1.3"
}

variable "core_node_user" {
    description = "core_node user name (default: ubuntu)"
    default = "ubuntu"
}
