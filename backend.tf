terraform {
    backend "s3" {
        bucket = "justin-dc3-dev-terraform-state"
        key    = "global/s3/terraform.tfstate"
        region = "us-east-1"
        profile = "terraform@448905052389"
    }
}