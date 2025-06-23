# devops-portfolio-project

# 🐳 Cloud Native DevOps Portfolio Project

## Project Overview

This project demonstrates a fully automated, production-grade cloud-native infrastructure and CI/CD pipeline built entirely by Infrastructure-as-Code (IaC) using Terraform, Docker, AWS, and GitHub Actions.

## 🏗 Architecture

- **Infrastructure:** AWS (VPC, Subnets, Security Groups, EC2, RDS)
- **Compute:** EC2 Ubuntu server (Dockerized application)
- **Application:** Python Flask app with PostgreSQL backend
- **Database:** AWS RDS PostgreSQL (Multi-AZ)
- **Containerization:** Docker (Gunicorn server)
- **Image Repository:** AWS Elastic Container Registry (ECR)
- **CI/CD:** GitHub Actions
- **Monitoring:** CloudWatch Metrics & Logs
- **Security:** IAM Instance Profile Roles (no credentials stored in pipelines)

![Architecture Diagram](architecture.png)

## 🔧 Technologies Used

- AWS (VPC, EC2, RDS, IAM, ECR, CloudWatch)
- Terraform (full Infrastructure as Code)
- GitHub Actions (CI/CD pipeline)
- Docker (containerization)
- Python Flask
- PostgreSQL
- Gunicorn

## 🚀 Key Features

- Fully automated build, test, push and deploy pipeline
- IAM Role-based ECR authentication (no AWS credentials exposed)
- Secure multi-AZ VPC design
- Secure EC2 ↔ RDS connection via Security Groups
- Full monitoring & observability via CloudWatch
- Fully automated end-to-end deployment with zero manual intervention

## 📂 Repository Structure


## ✅ Complete End-to-End DevOps Stack

This repository demonstrates real-world cloud-native DevOps best practices that are directly applicable for production environments.



---

**DevOps Engineer Portfolio Project:**

- Designed and implemented fully automated cloud-native infrastructure using AWS, Terraform, Docker, and GitHub Actions.
- Built secure VPC architecture with multi-AZ subnets, EC2 compute layer, and RDS PostgreSQL database.
- Developed full CI/CD pipeline with automated Docker builds, image storage in AWS ECR, and zero-downtime EC2 deployments.
- Configured IAM Instance Roles for secure ECR authentication without credentials inside pipelines.
- Integrated full monitoring and observability using AWS CloudWatch metrics and log aggregation.
- Delivered fully reproducible Infrastructure-as-Code deployments with end-to-end automation.

---


🚀 **DevOps Portfolio Project Complete!**

I'm excited to share my latest DevOps Cloud-Native Portfolio Project — fully automated end-to-end deployment built entirely with:

✅ AWS (VPC, EC2, RDS, ECR, IAM, CloudWatch)  
✅ Terraform (Infrastructure as Code)  
✅ Docker (Containerization)  
✅ GitHub Actions (CI/CD)  
✅ Secure IAM Role-based deployment with zero credentials inside pipelines  
✅ Full monitoring & observability via CloudWatch

This project allowed me to gain deep hands-on experience building real-world cloud infrastructure following professional DevOps best practices. 🔥

👉 If you're hiring for DevOps/Cloud Engineering roles — let's connect!

#AWS #DevOps #Cloud #Terraform #GitHubActions #CI/CD #Portfolio #InfrastructureAsCode #Docker #CloudWatch

![Architecture Diagram](architecture.png)
