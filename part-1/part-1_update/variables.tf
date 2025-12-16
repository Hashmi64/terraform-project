variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "sg_name" {
  type        = string
  description = "Security group name"
}

variable "sg_description" {
  type        = string
  description = "Security group description"
}

variable "ssh_port" {
  type        = number
  default     = 22
}

variable "flask_port" {
  type        = number
  default     = 5000
}

variable "node_port" {
  type        = number
  default     = 3000
}

variable "allowed_cidr" {
  type        = string
  description = "Allowed CIDR for ingress"
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

variable "ec2_name" {
  type        = string
}
