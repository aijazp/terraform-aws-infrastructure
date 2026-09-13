resource "aws_security_group" "database" {
  name        = "terraform-database-sg"
  description = "Allow database traffic from application server"
  vpc_id      = aws_vpc.main.id

  ingress {
    description     = "MYSQL from application server"
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.web.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "terraform-database-sg"
  }
}