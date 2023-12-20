# AWS CloudFormation Project

## Overview

This project provides AWS CloudFormation templates for provisioning a Virtual Private Cloud (VPC) with public and private subnets, a VPN client, and an Aurora Serverless RDS database. The project is designed to be deployed on two AWS accounts.

## Project Structure

project-root/
│
├── templates/
│ ├── template-vpc.yaml
│ ├── template-vpn.yaml
│ ├── template-rds.yaml
│
├── deploy/
│ ├── deploy.sh
│
├── README.md



- **`templates/`**: Directory containing CloudFormation templates for VPC, VPN, and RDS.
- **`deploy/`**: Directory containing the deployment script (`deploy.sh`).
- **`README.md`**: This documentation file.

## Prerequisites

1. **AWS CLI**: Ensure that the AWS CLI is installed on your machine.
2. **AWS Credentials**: Configure the AWS CLI with the necessary credentials. You can use multiple profiles (`account1` and `account2`).

## Deployment Steps

1. **Configuration**:
   - Modify placeholder values in CloudFormation templates (`template-rds.yaml`, `template-vpc.yaml`, `template-vpn.yaml`) with actual configurations.

2. **Deployment Script**:
   - Run the deployment script using the following command:
     ```bash
     bash deploy/deploy.sh
     ```

3. **Verification**:
   - After deployment, verify resources in the AWS Management Console.
   - Use AWS CLI to check the status of CloudFormation stacks.

## Important Notes

- Ensure that IAM user in the target AWS account has required permissions for resource creation.
- Replace placeholder values with actual configurations in CloudFormation templates.

- The `template-vpn.yaml` requires an existing VPC as a parameter. If you don't have any existing VPC,
create one by running the `template-vpc.yaml`.</s>

