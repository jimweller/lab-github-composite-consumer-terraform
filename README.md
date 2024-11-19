# Terraform Reusable Github Action Demo

This is a very simple terraform repo to demonstrate leveraging a reusable action
from a central repository. It creates an SSM parameter in an AWS account. The
AWS credentials are stored as github action secrets in this repo and passed as
inputs to the reusable action.

- The reusable composite actions are here https://github.com/jimweller/lab-github-composite-actions
- AwsProfile 12345678901
