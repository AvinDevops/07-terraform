terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.82.2"
        }
    }

    backend "s3" {
        bucket = "avin-remote-state"
        key    = "for-each-demo"
        region = "us-east-1"
        dynamodb_table = "avin-locking"
    }
}

provider "aws" {
    region = "us-east-1"
}