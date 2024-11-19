
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.36"
    }
  }

  required_version = "~> 1.5"

  backend "s3" {
    bucket="terraform-remote-state-504400329018-us-east-2"
    key    = "jira-demo-github-composite-consumer-terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_ssm_parameter" "environment_type" {
  name        = "/jira-demo/github-composite-consumer-terraform"
  type        = "String"
  insecure_value = "SUCCESS!"
  description = "You deployed this infrastructure with a github composite action!"

}
