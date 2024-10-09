# Terraform AWS Web App

This repository contains Terraform code to set up AWS infrastructure for a web application, including a VPC, subnet, internet gateway, route table, security group, and an EC2 instance running a web server.

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html)
- An [AWS account](https://aws.amazon.com/)
- AWS CLI configured with appropriate permissions

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/prasanth624/terraform-aws-web-app.git
cd terraform-aws-web-app
```

### Initialize Terraform

Run the following command to initialize the Terraform configuration:

```bash
terraform init
```

### Plan the Infrastructure

To see what Terraform will create, run:

```bash
terraform plan
```

### Apply the Configuration

To create the infrastructure, run:

```bash
terraform apply
```

You will be prompted to confirm the action. Type `yes` to proceed.

### Outputs

After the infrastructure is created, you can see the outputs by running:

```bash
terraform output
```

## Cleanup

To remove all resources created by Terraform, run:

```bash
terraform destroy
```

You will be prompted to confirm the destruction. Type `yes` to proceed.

## Contributing
Feel free to fork the repository and submit pull requests for any improvements or features you'd like to add!

## License
This project is licensed under the MIT License. See the LICENSE file for more details.
