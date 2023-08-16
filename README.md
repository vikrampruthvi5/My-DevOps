# Terraform Automation and DevOps learning
## Pre-requisites
1. Install awscli
2. Create aws account
3. Create IAM user with CLI access
    - AMI -> users -> New User -> Administrator role added
4. Configure aws cli `aws configure`
    - Add your secret key
    - Add your secret id
    - Select default region
    - Set output as json

These above steps are required as we are not hardcoding any of the aws keys in the terraform providers file.

## Each folder
Each folder is a project where it targets one specific task. It can be a terraform code to bring up 