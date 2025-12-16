Terraform Project – Multi-Stage Deployment (3 Parts)
This repository contains a Terraform-based project implemented in three parts, showing the evolution from basic EC2 deployment to a containerized ECS + ALB architecture.

🔹 Part 1: Flask & Express on a Single EC2
Goal:
Deploy both backend (Flask) and frontend (Express) on one EC2 instance.
What was done:
EC2 instance created using Terraform
Required packages installed (Python, Node.js)
Flask backend runs on port 5000
Express frontend runs on port 3000
Both applications accessible via EC2 public IP
Outcome:
Single EC2 hosting both applications successfully.

🔹 Part 2: Flask & Express on Separate EC2 Instances
Goal:
Deploy backend and frontend on separate EC2 instances.
What was done:
Two EC2 instances created using Terraform
One for backend
One for frontend
Security Groups configured:
Frontend can access backend
Public access enabled for required ports
Ansible used to configure and start applications

🔹 Part 3: Dockerized Deployment using ECS & ALB
Goal:
Deploy applications using Docker + ECS Fargate + ALB.
What was done:
Docker images created for:
Flask backend
Express frontend
Images pushed to Amazon ECR
VPC, subnets, and security groups created using Terraform
ECS cluster created with Fargate
Two ECS services:
Backend service (private)
Frontend service (public via ALB)
Application Load Balancer configured:
Default route → Frontend
/submit routed to backend via frontend logic
Outcome:
Frontend accessible via ALB DNS and successfully communicates with backend.

Author: 
Mosharib Hashmi
Solutions Architect | DevOps Specialist (Terraform)
LinkedIn: https://www.linkedin.com/in/hashmi98

Outcome:
Frontend and backend running independently on different EC2 instances.
