# Database Subnet Group (still correct)
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

# ✅ Secure RDS Security Group — only allow EC2 Security Group to access

resource "aws_security_group" "rds_sg" {
  name        = "portfolio-rds-sg"
  description = "Allow PostgreSQL access from EC2"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "Postgres from EC2 only"
    from_port        = 5432
    to_port          = 5432
    protocol         = "tcp"
    security_groups  = [aws_security_group.ec2_sg.id]  # <- ✅ This allows only EC2 SG
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

# ✅ Database Instance
resource "aws_db_instance" "portfolio_rds" {
  identifier              = "portfolio-postgres-db"
  engine                  = "postgres"
  engine_version          = "16.6"  # safest stable version now in eu-west-2
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  db_name                 = "mydb"
  username                = "myuser"
  password                = "StrongPassword123!"
  skip_final_snapshot     = true
  publicly_accessible     = true  # ✅ still needed for now while we're developing
  db_subnet_group_name    = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids  = [aws_security_group.rds_sg.id]

  tags = {
    Name = "portfolio-postgres-db"
  }
}

