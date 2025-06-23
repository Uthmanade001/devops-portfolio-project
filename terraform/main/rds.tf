resource "aws_db_subnet_group" "rds_subnet_group" {
  name = "portfolio-rds-subnet-group"
  subnet_ids = [
    aws_subnet.public_subnet_a.id,
    aws_subnet.public_subnet_b.id
  ]

  tags = {
    Name = "portfolio-rds-subnet-group"
  }
}

resource "aws_security_group" "rds_sg" {
  name        = "portfolio-rds-sg"
  description = "Allow PostgreSQL access"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "PostgreSQL"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "portfolio-rds-sg"
  }
}

resource "aws_db_instance" "portfolio_rds" {
  identifier              = "portfolio-postgres-db"
  engine                  = "postgres"
  engine_version          = "16.6"  # <-- updated version
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  db_name                 = "mydb"
  username                = "myuser"
  password                = "StrongPassword123!"
  skip_final_snapshot     = true
  publicly_accessible     = true
  db_subnet_group_name    = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids  = [aws_security_group.rds_sg.id]

  tags = {
    Name = "portfolio-postgres-db"
  }
}

