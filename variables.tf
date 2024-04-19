variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}
variable "region" {
  type    = string
  default = "us-west-2"
}

variable "vpc_name" {
  description = "Name of AWS VPC"
  default     = "Dev-VPC"
}

variable "vpc_cidr" {
  description = "CIDR of AWS VPC"
  default     = "10.0.0.0/16"
}

variable "subnets" {
  description = "list of AWS subnets"
  type        = list(string)
  default     = ["10.0.1.0/32", "10.0.2.0/32"]
}

#
#variable "subnet_cidr" {
#  description  = "CIDR of AWS subnet"
#  type         = string
#}