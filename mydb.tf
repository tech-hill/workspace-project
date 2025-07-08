resource "aws_db_instance" "mysql" {
  identifier             = "${local.name}-mysql-db"
  engine                 = "mysql"
  engine_version         = "8.0.41"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  username               = var.db_username
  password               = jsondecode(data.aws_secretsmanager_secret_version.db_password.secret_string).password
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.mysql_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
}

resource "aws_db_subnet_group" "mysql_subnet_group" {
  name       = "${local.name}-mysql-subnet-group"
  subnet_ids = [aws_subnet.private_a.id, aws_subnet.private_b.id]
}

resource "aws_security_group" "rds_sg" {
  name   = "${local.name}-rds-sg"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.ec2_sg.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}