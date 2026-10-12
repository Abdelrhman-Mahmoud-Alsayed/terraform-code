resource "aws_subnet" "public" {
    count = 8
    vpc_id = aws_vpc.pro-vpc.id
    cidr_block = var.sub-sidr[count.index]
    availability_zone = var.az[count.index]
  
}