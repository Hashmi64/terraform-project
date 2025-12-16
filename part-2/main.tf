provider "aws" {
  region = var.aws_region
}

# -----------------------------
# Security Group for Backend
# -----------------------------
resource "aws_security_group" "backend_sg" {
  name        = "backend_sg"
  description = "Allow Flask Backend traffic"

  # Allow Flask traffic from ANYWHERE or only frontend
  ingress {
    from_port   = var.flask_port
    to_port     = var.flask_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]      # OR REPLACE with frontend EC2 private IP block
  }

  # SSH
  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = [var.allowed_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# -----------------------------
# Security Group for Frontend
# -----------------------------
resource "aws_security_group" "frontend_sg" {
  name        = "frontend_sg"
  description = "Allow Express Frontend traffic"

  # Allow Express port
  ingress {
    from_port   = var.express_port
    to_port     = var.express_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # SSH
  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = [var.allowed_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# -----------------------------
# Backend EC2 Instance
# -----------------------------
resource "aws_instance" "backend" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.backend_sg.id]

  tags = {
    Name = "Flask-Backend-Server"
  }
}

# -----------------------------
# Frontend EC2 Instance
# -----------------------------
resource "aws_instance" "frontend" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.frontend_sg.id]

  tags = {
    Name = "Express-Frontend-Server"
  }
}

# -----------------------------
# Outputs
# -----------------------------
output "backend_public_ip" {
  value = aws_instance.backend.public_ip
}

output "frontend_public_ip" {
  value = aws_instance.frontend.public_ip
}
