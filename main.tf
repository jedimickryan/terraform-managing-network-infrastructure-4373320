data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["979382823631"] # Bitnami
}

resource "aws_instance" "test" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t3.nano"

  tags = {
    Name = "Network Test Server"
  }
}

# Build VPC for Development

resource "aws_vpc" "dev" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "dev" {
  count  = length(var.subnets) # count = length function of variable subnets
  vpc_id = aws_vpc.dev.id

  cidr_block = cidrsubnet(aws_vpc.dev.cidr_block, 4, count.index + 1)
  tags = {
    Name = var.subnets[count.index]
  }
}

#resource "aws_subnet" "dev-subnet-02" {
#  vpc_id     = aws_vpc.dev-vpc.id
#  cidr_block = var.subnets[1]
#
#
#  tags = {
#    Name = "DEV Subnet 02"
#  }
#}