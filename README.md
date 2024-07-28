# Cloud-Resume-API-Challenge
## Introduction
The project involves building and deploying an AWS serverless API using AWS Lambda and DynamoDB, and integrating it with GitHub actions. The lambda function retrieves resume data from a DynamoDB table and returns it in JSON format. GitHub actions are used as the CI/CD pipeline to enable automated deployment. Terraform Cloud is used for resource provisioning and management of the cloud infrastructure. The resume data can be accessed using the Amazon API Gateway endpoint.
## Architectural Diagram
https://lucid.app/publicSegments/view/87b0bfa9-5ddf-4b62-a643-49314dcf89c7/image.png

## Serverless Logic
- Amazon API Gateway routes requests to the AWS lambda function. An IAM policy is attached to the API Gateway to allow invocation of the Function. The API Gateway exposes the HTTPS endpoint, and an API call (HTTPS request)made to the endpoint initiates the Lambda Function.
-  AWS Lambda executes the serverless code with Python as the runtime. 
 The Lambda function assumes an execution role that allows it to access the DynamoDB table.
- DynamoDB is used to store the resume data.
- Terraform is the Infrastructure as Code (IaC) tool used to provision and manage AWS resources. 
## Setup
### 1. Using terraform to define and deploy the Infrastructure
  - Configure your infrastructure using Terraform and define your resources on the main.tf file.
###  2. Terraform Cloud
  - Configure the terraform workspace with your AWS account Credentials and variables
  - The Terrafom Cloud automatically manages the Terraform state file and triggers deployment of your infrastructure.
  - When connected to the GitHub repository, Terraform Cloud monitors any changes 
    and triggers runs to apply the changes to the Terraform configurations.
###  3. DynamoDB Table
  - The DynamoDB is created manually and then the data is uploaded using GitHub actions. This ensures that the database is automatically              updated in case of any changes in the resume. 
###  4. Deploy REST API
  - API Gateway  is managed by the Terraform configuration set. Any updates are applied through the Terraform Cloud.
## API Endpoint 
## Blog Post






