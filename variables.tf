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
  type        = string
  default     = "vpc-dev"
}

variable "vpc_cidr" {
  description = "CIDR of AWS VPC"
  type        = string
  default     = "10.5.0.0/20"
}

variable "subnets" {
  description = "Name of AWS subnets"
  type        = list(string)
  default     = ["sub-public", "sub-private"]
}

#
#variable "subnet_cidr" {
#  description  = "CIDR of AWS subnet"
#  type         = string
#}