variable "vpc_id" {
  description = "The ID of the existing VPC"
}

variable "cidr_blocks" {
  description = "CIDR blocks for the subnets"
  type = map(string)
}

# Public Web Subnet in ap-northeast-2a
resource "aws_subnet" "public_web_subnet_a" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_blocks["public_web_subnet_a"]
  availability_zone       = "ap-northeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Web a"
  }
}

# Private App Subnet in ap-northeast-2a
resource "aws_subnet" "private_app_subnet_a" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_blocks["private_app_subnet_a"]
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "Private App a"
  }
}

# Private DB Subnet in ap-northeast-2a
resource "aws_subnet" "private_db_subnet_a" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_blocks["private_db_subnet_a"]
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "Private DB a"
  }
}

# Public Web Subnet in ap-northeast-2c
resource "aws_subnet" "public_web_subnet_c" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_blocks["public_web_subnet_c"]
  availability_zone       = "ap-northeast-2c"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Web c"
  }
}

# Private App Subnet in ap-northeast-2c
resource "aws_subnet" "private_app_subnet_c" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_blocks["private_app_subnet_c"]
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "Private App c"
  }
}

# Private DB Subnet in ap-northeast-2c
resource "aws_subnet" "private_db_subnet_c" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_blocks["private_db_subnet_c"]
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "Private DB c"
  }
}
