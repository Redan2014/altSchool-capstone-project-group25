resource "aws_vpc" "altproject" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true

  tags = {
    "name" = "capstone25-vpc"
  }
}

locals {
  subnet_ids = tomap({
    "1" = "${aws_subnet.privsub[0].id}"
    "2" = "${aws_subnet.privsub[1].id}"
  })
}

resource "aws_subnet" "privsub" {
  vpc_id                  = aws_vpc.altproject.id
  cidr_block              = var.subnet_cidr[count.index]
  map_public_ip_on_launch = false
  availability_zone       = var.availability_zone[count.index]
  count                   = length(var.subnet)

  tags = {
    Name = var.subnet[count.index]
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.altproject.id
  count                   = length(var.pubsubnets_cidr)
  cidr_block              = element(var.pubsubnets_cidr, count.index)
  availability_zone       = element(var.availability_zone, count.index)
  map_public_ip_on_launch = true
}

resource "aws_route_table" "capstoneprivate" {
  vpc_id = aws_vpc.altproject.id

  tags = {
    name = "capstone-private-route-table"
  }
}

resource "aws_route_table" "capstonepublic" {
  vpc_id = aws_vpc.altproject.id

  tags = {
    name = "capstone-public-route-table"
  }
}

resource "aws_internet_gateway" "capstoneigw" {
  vpc_id = aws_vpc.altproject.id

  tags = {
    Name = var.igw
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = element(aws_subnet.public_subnet.*.id, 0)

  tags = {
    Name = "nat"
  }
}

resource "aws_eip" "nat_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.capstoneigw]
}

resource "aws_route" "private_nat_gateway" {
  route_table_id         = aws_route_table.capstoneprivate.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat.id
}

resource "aws_route" "public_gateway" {
  route_table_id         = aws_route_table.capstonepublic.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.capstoneigw.id
}

resource "aws_route_table_association" "private" {
  count          = length(var.subnet_cidr)
  subnet_id      = element(aws_subnet.privsub.*.id, count.index)
  route_table_id = aws_route_table.capstoneprivate.id
}

resource "aws_route_table_association" "public" {
  count          = length(var.pubsubnets_cidr)
  subnet_id      = element(aws_subnet.public_subnet.*.id, count.index)
  route_table_id = aws_route_table.capstonepublic.id
}

resource "aws_security_group" "lb-altsecuritygroup" {
  name        = "altsecuritygroup"
  description = "security group for instances"
  vpc_id      = aws_vpc.altproject.id


  dynamic "ingress" {
    for_each = var.security_groups

    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
