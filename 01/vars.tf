variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
  default = "us-east-2"
}

variable "istest" {}

variable "instancetype" {
  default = "t2.micro"
}

variable "AMIS" {
  type = "map"
  default = {
    us-east-2 = "ami-0f7919c33c90f5b58"
    us-east-1 = "ami-0323c3dd2da7fb37d"
  }
}

variable "sg_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [8200, 8201,8300, 9200, 9500]
}
