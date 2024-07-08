# Cloud-Resume-API-Challenge
## Introduction
The project involves building and deploying a serverless API using AWS Lambda and DynamoDB and integrating it with GitHub actions. The goal is to construct an API that can serve resume data in JSON format.
## Serverless Tier
I used AWS Lambda and API Gateway for the serverless logic with Python as the runtime environment. The API Gateway exposes the HTTPS endpoint, and an API call (HTTPS request)made to the endpoint initiates the Lambda Function.
(An IAM policy is defined to Using an IAM policy, you create a lambda function that cannot be initiated at all unless it is invoked by an API Gateway resource that you define Such policy can be defined using resource-based policy attached to the Dynamo DB table. The Lambda function assumes an execution role that allows it to access the DynamoDB table.
Lambda Function deployment
When the Lambda function is deployed, it is invoked with permissions assigned to the execution role attached to it to enable it to reach the internet-facing endpoints.



## Data Tier
## Application Tier
### Creating a DynamoDB Table
- [ ] From the management console choose DynamoDB then choose 'Create Table'.
- [ ] Specify the table Name and Partition Key and then choose 'Create Table'.
- [ ] Upload the JSON document with the resume data.

### Create Lambda Execution Role
- [ ] From the Identity and Access Management console, choose 'Roles' then 'Create Roles'
- [ ] Choose 'Trusted Entity Type' then select 'AWS Service'
- [ ] Under 'Use Case' choose lambda then choose next
- [ ] Choose AWSLambdaDynamoDBxecutionRole then choose next
- [ ] Specify the role name, then 'Create Role'.

### Create Lambda Function
- [ ] From the Lambda Console choose 'Create Function'.
- [ ] Specify the Function Name and runtime(I will use Python)
- [ ] Under permissions choose the execution Role you created.
- [ ] For Policy templates choose simple microservice permissions (This policy will give Lambda Function permissions to interact with DynamoDB).
- [ ] Choose Create Function.
- [ ] Open the Lambda Function and in the Code editor replace the content with your Python code then choose 'Deploy'.

### Create a REST API




