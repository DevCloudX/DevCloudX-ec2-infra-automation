name: Deploy EC2 via Terraform

on:
  workflow_dispatch:
    inputs:
      aws_access_key:
        required: true
      aws_secret_key:
        required: true
      vpc_name:
        required: true
      vpc_cidr:
        required: true
      subnet_name:
        required: true
      subnet_cidr:
        required: true
      security_group_name:
        required: true
      ec2_name:
        required: true
      key_pair_name:
        required: true

jobs:
  terraform:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v3

      - name: Setup Terraform
        uses: hashicorp/setup-terraform@v3

      - name: Terraform Init
        run: terraform init

      - name: Terraform Apply
        env
