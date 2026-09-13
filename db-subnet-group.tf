resource "aws_db_subnet_group" "database" {
  name = "terraform-database-subnet-group"

  subnet_ids = [
    aws_subnet.private.id,
    aws_subnet.private_2.id
  ]

  tags = {
    Name = "terraform-database-subnet-group"
  }
}