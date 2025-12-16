resource "aws_ecr_repository" "backend" {
  name = "flask-repo"
}

resource "aws_ecr_repository" "frontend" {
  name = "express-repo"
}

# aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 739680087711.dkr.ecr.us-east-1.amazonaws.com
