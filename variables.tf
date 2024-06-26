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
  description = "Ubuntu Server 22.04 LTS"
  type        = string
  default     = "ami-08116b9957a259459"
}
variable "public_key" {
  description = "Path to public key"
  type        = string
  sensitive   = true
  default     = "key/ec2.pub"
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

variable "public_ip" {
  description = "Public IP to whitelist"
  type        = string
  default     = "144.xx.xx.xx/32"  # My source IP Address
  sensitive   = true
}

variable "igw" {
  description = "internet gateway"
  type        = string
  default     = "igw-dev"
}

variable "public_sg" {
  description = "Public Security Group"
  type        = string
  default     = "grp-public-SG"
}

variable "public_rtb" {
  description = "Public Route Table"
  type        = string
  default     = "rtb-public"
}

variable "ngw" {
  description = "Name of AWS NAT gateway"
  type        = string
  default     = "ngw-dev"
}