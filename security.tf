resource "aws_network_acl" "Public_NACL" {
  vpc_id = aws_vpc.VPC_teste.id
  subnet_ids = [ aws_subnet.Public_subnet.id ]
  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = var.publicdestCIDRblock 
    from_port  = 22
    to_port    = 22
  }
  
 
  egress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = var.publicdestCIDRblock
    from_port  = 22 
    to_port    = 22
  }
  
tags = {
    Name = "Public NACL"
}
}

