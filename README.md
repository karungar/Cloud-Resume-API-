# Cloud-Resume-API-Challenge

This is a repository for the Cloud Resume API challenge

## Creating a DynamoDB Table
- [ ] From the management console choose DynamoDB then choose 'Create Table'.
- [ ] Specify the table Name and Partition Key and then choose 'Create Table'.
- [ ] Upload the JSON document with the resume data.

## Create Lambda Execution Role
- [ ] From the Identity and Access Management console, choose 'Roles' then 'Create Roles'
- [ ] Choose 'Trusted Entity Type' then select 'AWS Service'
- [ ] Under 'Use Case' choose lambda then choose next
- [ ] Choose AWSLambdaDynamoDBxecutionRole then choose next
- [ ] Specify the role name, then 'Create Role'.

## Create Lambda Function
- [ ] From the Lambda Console choose 'Create Function'.
- [ ] Specify the Function Name and runtime(I will use Python)
- [ ] Under permissions choose the execution Role you created.
- [ ] For Policy templates choose simple microservice permissions (This policy will give Lambda Function permissions to interact with DynamoDB).
- [ ] Choose Create Function.
- [ ] Open the Lambda Function and in the Code editor replace the content with your Python code then choose 'Deploy'.

## Create a HTTP API




