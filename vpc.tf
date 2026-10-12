resource "aws_vpc" "pro-vpc" {
    cidr_block = var.vpc_cidr
    tags = {
    Name = "vpc-${var.env}" 
    }
  
}