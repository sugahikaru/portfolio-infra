resource "aws_db_subnet_group" "this" {
  name       = "my-db-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "my-db-subnet-group"
  }
}

resource "aws_db_instance" "this" {
  identifier              = "my-mysql-db"
  engine                  = "mysql"
  engine_version          = "8.0.35"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  username                = var.db_username
  password                = var.db_password
  db_subnet_group_name    = aws_db_subnet_group.this.name
  vpc_security_group_ids  = var.vpc_security_group_ids
  publicly_accessible     = false
  skip_final_snapshot     = true
  deletion_protection     = false
}
