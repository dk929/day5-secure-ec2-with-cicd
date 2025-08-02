# 🔐 Day 5 – Secure EC2 Deployment with CI/CD Pipeline (Cloud Security Project)

This project is part of a 15-day Cloud Security learning journey. On **Day 5**, we automate the secure deployment of an EC2 instance using **Terraform** and a **CI/CD pipeline** powered by **GitHub Actions**.

---

## 📌 Project Objective

- Use **Infrastructure as Code (IaC)** to create a secure EC2 instance
- Automate the deployment using a **GitHub Actions pipeline**
- Implement **security best practices**:
  - IAM role attachment
  - Restricted SSH access
  - Secure VPC setup

---

## 🧰 Tech Stack

- 🟡 Terraform
- 🟣 GitHub Actions
- 🟤 AWS EC2, IAM, Security Groups, VPC
- 🔒 Cloud Security Principles

---

## 🏗️ Infrastructure Setup

- ✅ One EC2 instance (Amazon Linux 2023)
- ✅ IAM Role with least privilege access
- ✅ Security Group allowing SSH only from my IP
- ✅ CI/CD Pipeline for automated provisioning

---

## 🔁 CI/CD Workflow (`.github/workflows/deploy.yml`)

The GitHub Actions pipeline does:

1. Check out the repo
2. Set up Terraform
3. Run `terraform init`, `plan`, and `apply`
4. Deploy EC2 instance automatically on every push to `main`

---

## 🔐 Security Best Practices Used

- IAM Role used instead of Access Keys in EC2
- SSH access locked to specific IP using Security Group
- No hard-coded secrets (used GitHub Secrets for AWS keys)
- Applied tagging for resource visibility
