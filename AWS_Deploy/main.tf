#####################################################################
##
##      Criado 13/04/20 por admin. para AWS_Deploy
##
#####################################################################

## REFERENCE {"aws_network":{"type": "aws_reference_network"}}

terraform {
  required_version = "> 0.10.0"
}

provider "aws" {
  version = "~> 1.8"
}


data "aws_subnet" "subnet" {
  id = "${var.subnet_subnet_id}"
}

resource "aws_instance" "aws_instance" {
  ami = "${var.aws_instance_ami}"
  key_name = "${var.aws_key_pair_name}"
  instance_type = "${var.aws_instance_aws_instance_type}"
  availability_zone = "${var.availability_zone}"
  subnet_id  = "${data.aws_subnet.subnet.id}"
  tags {
    Name = "${var.aws_instance_name}"
  }
}


resource "aws_eip" "elastic_ip" {
  vpc = true
}

resource "aws_eip_association" "aws_instance_elastic_ip_eip_association" {

  instance_id   = "${aws_instance.aws_instance.id}"
  allocation_id = "${aws_eip.elastic_ip.id}"
}