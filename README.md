# AWS 3-Tier Web Application Infrastructure using Terraform
## Overview

This project demonstrates how to provision and manage AWS infrastructure using Terraform
The infrastructure is designed using a 3-tier architecture with:

- A public web server
- A private application server
- A private MYSQL database
- Public and Private subnets
- Internet Gateway
- NAT Gateway
- Route tables and Route associations
- Security groups
- Amazon RDS

All infrastructure resources are created and managed using Infrastructure as Code (IaC) with Terraform.

## Architecture

Internet
   |
Internet Gateway
   |
Public Subnet
   |
Web EC2
   |
   |                         NAT Gateway
   |                              |
   |                         Internet
   |                              ^
   |                              |
Private Subnets ------------------+
   |
   +-- App EC2
   |
   +-- RDS MySQL


## Project Structure

```text
terraform-aws-infrastructure/
│
├── provider.tf
├── main.tf
├── subnet.tf
├── private-subnet.tf
├── private-subnet-2.tf
├── internet-gateway.tf
├── route-table.tf
├── route-association.tf
├── private-route-table.tf
├── private-route-table-association.tf
├── private-route-table-association-2.tf
├── private-route.tf
├── nat-gateway.tf
├── security-group.tf
├── app-server.tf
├── db-security-group.tf
├── db-subnet-group.tf
├── db.tf
├── ec2.tf
├── outputs.tf
└── README.md

## Terraform Deployment

### Prerequisites

- AWS account
- AWS CLI configured
- Terraform installed
- IAM permissions to create the required AWS resources

### Initialize Terraform

```bash
terraform init

### Validate Configuration
terraform validate


### Preview Infrastructure
terraform plan

### Create Infrastructure
terraform apply