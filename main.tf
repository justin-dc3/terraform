provider "aws" {
    region                  = "us-east-1"
    shared_credentials_file = "/Users/jgluchowski/.aws/credentials"
    profile                 = "terraform@448905052389"
}

resource "aws_instance" "example" {
    ami             = "ami-40d28157"
    instance_type   = "t2.micro"
    
    tags {
        Name = "terraform-example"
    }
}
