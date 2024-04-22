variable "instance_type" {
  description = "Type of EC2 instance to provision"
  type        = string
  default     = "t3.nano"
}

variable "instances" {
  description = "List of AWS instances"
  type        = list(string)
  default     = ["ec2-public", "ec2-private"]
}

variable "ami_id" {
  description = "ID of amazone machine image"
  type        = string
  default     = "ami-0f0ba639982a32edb"
}
variable "public_key" {
  description = "Path to public key"
  type        = string
  sensitive   = true
  default     = "keys/ec2.pub"
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
