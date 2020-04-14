#####################################################################
##
##      Criado 13/04/20 por admin. para AWS_Deploy
##
#####################################################################

variable "aws_instance_ami" {
  default = "ami-07c1207a9d40bc3bd"
  type = "string"
  description = "Gerado"
}

variable "aws_instance_aws_instance_type" {
  default = "t2.micro"
  type = "string"
  description = "Gerado"
}

variable "availability_zone" {
  default = "us-east-2b"
  type = "string"
  description = "Gerado"
}

variable "aws_instance_name" {
  type = "string"
  description = "Gerado"
}

variable "aws_key_pair_name" {
  default = "telefonica-keypair"
  type = "string"
  description = "Gerado"
}

variable "subnet_subnet_id" {
  default = "subnet-087fe7c5de203dfbe"
  type = "string"
  description = "Gerado"
}

variable "volume_name_volume_size" {
  type = "string"
  description = "Gerado"
}

