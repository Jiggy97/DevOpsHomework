resource "aws_eip" "nat_eip" {
  vpc = true

  tags = {
    Name = "NAT EIP"
  }
}

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_web_subnet_a.id

  tags = {
    Name = "Main NAT Gateway"
  }

  depends_on = [aws_internet_gateway.igw]
}
