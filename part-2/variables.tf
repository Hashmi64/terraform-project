variable "aws_region" {
  type        = string
}

variable "ami_id" {
  type        = string
}

variable "instance_type" {
  type        = string
}

variable "key_name" {
  type        = string
}

variable "allowed_cidr" {
  type        = string
}

variable "ssh_port" {
  type    = number
  default = 22
}

variable "flask_port" {
  type    = number
  default = 5000
}

variable "express_port" {
  type    = number
  default = 3000
}
