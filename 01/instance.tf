resource "aws_instance" "dev" {
    ami = lookup(var.AMIS, var.AWS_REGION)
    instance_type = var.instancetype
    count = var.istest == true ? 1 : 0 
  }

resource "aws_instance" "prod" {
    ami = "${lookup(var.AMIS, var.AWS_REGION)}"
    instance_type = var.instancetype
    count = var.istest == false ? 1 : 0 
  }

resource "aws_security_group" "dynamicsg" {
  name        = "dynamic-sg"
  description = "Ingress for Vault"