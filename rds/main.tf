resource "aws_db_subnet_group" "main" {
  name       = "main"
  subnet_ids = var.subnet_ids
}

resource "aws_db_instance" "mysql" {
  identifier              = "mysql-db"
  engine                  = "mysql"
  instance_class          = "db.t2.micro"
  allocated_storage       = 20
  username                = "admin"
  password                = "password"
  db_subnet_group_name    = aws_db_subnet_group.main.name
  skip_final_snapshot     = true
  publicly_accessible     = false
  vpc_security_group_ids  = [var.security_group_id]
}


