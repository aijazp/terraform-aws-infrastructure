resource "aws_db_instance" "database" {
  identifier = "terraform-database"

  engine         = "mysql"
  engine_version = "8.0"

  instance_class        = "db.t3.micro"
  allocated_storage     = 20
  max_allocated_storage = 50
  storage_type          = "gp3"

  db_name  = "appdb"
  username = "admin"
  password = var.db_password

  db_subnet_group_name = aws_db_subnet_group.database.name
  vpc_security_group_ids   = [aws_security_group.database.id]

  publicly_accessible = false
  skip_final_snapshot = true
  deletion_protection = false

  tags = {
    Name = "terraform-database"
  }

}