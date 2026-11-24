# aws-infrastructure-as-code
Infrastructure as Code (IaC) project that provisions AWS resources using Terraform.


# AWS Infrastructure Automation with Terraform

## Project Overview

This project demonstrates Infrastructure as Code (IaC) by automating the provisioning and management of AWS cloud infrastructure using Terraform.

The project provisions essential AWS resources, including a custom VPC, EC2 instance, Security Groups, S3 bucket, and AWS Lambda function.

## Architecture

**AWS Services Used:**
- Amazon VPC
- Amazon EC2
- Amazon S3
- AWS Lambda
- Security Groups
- Subnets
- Internet Gateway
- Route Tables

## Key Features

- Automated AWS infrastructure provisioning using Terraform.
- Created a custom VPC with networking components.
- Configured EC2 instances and Security Groups.
- Automated S3 bucket creation and management.
- Provisioned AWS Lambda functions using Terraform.
- Used reusable Terraform configurations with variables and outputs.

## Technologies Used

| Technology | Purpose |
|---|---|
| AWS | Cloud infrastructure |
| Terraform | Infrastructure as Code |
| Git | Version control |
| GitHub | Source code management |
| VS Code | Development environment |

## Skills Learned

- Infrastructure as Code (IaC).
- Terraform providers, resources, variables, and outputs.
- Terraform state management.
- AWS networking: VPC, Subnets, Route Tables, and Internet Gateway.
- EC2 provisioning and Security Group configuration.
- S3 bucket and Lambda function automation.
- Git and GitHub version control.

## Project Structure

```text
terraform-aws-project/
│
├── vpc/
├── ec2/
├── s3/
├── lambda/
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md
```

*Update this structure to match your actual repository.*

## How to Run

1. Install Terraform and AWS CLI.
2. Configure AWS credentials.
3. Clone this repository.
4. Initialize Terraform:

   `terraform init`

5. Validate the configuration:

   `terraform validate`

6. Review the execution plan:

   `terraform plan`

7. Deploy the infrastructure:

   `terraform apply`

8. Clean up resources when finished:

   `terraform destroy`

## Project Outcome

Successfully automated the provisioning of core AWS infrastructure components using Terraform. Gained practical experience in AWS cloud services, networking, infrastructure automation, and Infrastructure as Code principles.

## Author

Mohammed Ahmeduddin Taha

