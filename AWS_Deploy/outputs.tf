#####################################################################
##
##      Criado 13/04/20 por admin. para AWS_Deploy
##
#####################################################################

output "idServidor" {
  value = "${aws_instance.aws_instance.id}"
}

output "publicIP" {
  value = "${aws_instance.aws_instance.public_ip}"
}

