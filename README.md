# bosh-aws-stackato3

# terraform + AWS + Stackato 3.6

# Description

This project aims to automate steps described in [HPE Stackato Docs](http://docs.stackato.com/admin/server/ec2.html#vm-ec2).

Be sure to review the [License Terms](http://docs.stackato.com/admin/reference/eula.html#eula).

# TODO

[ ] 
[ ] 

## Purpose

This Terraform script has the purpose of jumpstarting the Boostrapping process
for BOSH.

## Requirements

* This Terraform script was tested with Terraform v0.7.10.
* The instructions assume you have a valid PEM key.
* The key and secret for that IAM user must be in the environment variables. See http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html for more details.

## Usage

### Configure

* Open the `variables.tf` file and add regiones/AZ/AMIs as you need.
* You can configure the *prefix* in this file so you won't have to pass it every time in the command line.
* `cp terraform.tfvars.example terraform.tfvars` and edit accordingly.

### Check what resources are going to be created

`terraform plan -var 'prefix=my-stackato'`

### Create the deployment

`terraform apply -var 'prefix=my-stackato'`

#### AWS Resources to be created

Upon execution, the script creates:

* 1 VPC
* 1 Elastic IP
* 2 Subnets
* 2 Route tables
* 1 Internet Gateway
* 1 NAT Gateway
* 1 Security group
* 1 core_node

# TODO

Instance types:

small   = t2.medium
medium  = m3.medium
large   = m3.large

Add storage 40Gb for the root
