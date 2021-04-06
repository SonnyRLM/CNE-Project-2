data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_vpc" "task_vpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    project = "CNE-Project-2"
  }
}

resource "aws_subnet" "CNE-Pub-1" {
  vpc_id                  = aws_vpc.task_vpc.id
  cidr_block              = var.pub_snA_cidr_block
  availability_zone        = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = "true"
  

  tags = {
    project = "CNE-Project-2"
  }
}

resource "aws_subnet" "CNE-Pub-2" {
  vpc_id                  = aws_vpc.task_vpc.id
  cidr_block              = var.pub_snB_cidr_block
  availability_zone        = data.aws_availability_zones.available.names[1]
  map_public_ip_on_launch = "true"
  

  tags = {
    project = "CNE-Project-2"
  }
}

resource "aws_internet_gateway" "CNE-igw" {
  vpc_id = aws_vpc.task_vpc.id

  tags = {
    project = "CNE-Project-2"
  }
}

resource "aws_route_table" "task_rt" {
  vpc_id = aws_vpc.task_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.CNE-igw.id

  }

  tags = {
    project = "CNE-Project-2"
  }
}

resource "aws_route_table_association" "CNE-rta-subnet1" {
  subnet_id      = aws_subnet.CNE-Pub-1.id
  route_table_id = aws_route_table.task_rt.id
}

resource "aws_route_table_association" "CNE-rta-subnet2" {
  subnet_id      = aws_subnet.CNE-Pub-2.id
  route_table_id = aws_route_table.task_rt.id
}