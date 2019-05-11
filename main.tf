provider "aws" {
    region                  = "us-east-1"
    shared_credentials_file = "/Users/jgluchowski/.aws/credentials"
    profile                 = "terraform@448905052389"
}

resource "aws_s3_bucket" "terraform_state" {
    bucket = "justin-dc3-dev-terraform-state"
    
    versioning {
        enabled = true
    }
    
    lifecycle {
        prevent_destroy = true
    }
}
